class GirlsController < ApplicationController

	include ApplicationHelper

	def new
		# force not being able to register new girls
		unless current_user.is_admin
			redirect_to :root and return
		end
		@girl = Girl.new
		@girl.level = Level.where(name:params[:level]).first
	end

	def create
		# force not being able to register new girls
		unless current_user.is_admin
			redirect_to :root and return
		end
		@girl = Girl.new(girl_params)
		@girl.user = current_user
		@girl.level = Level.where(id: params[:level].to_i).first

		if @girl.level != Level.where(name:"Tenderheart").first
			@girl.sessions << Session.find_by(id:params[:session_A_id])
			@girl.sessions << Session.find_by(id:params[:session_B_id])
			@girl.sessions << Session.find_by(id:params[:session_C_id])
			@girl.sessions << Session.find_by(id:params[:session_D_id])
		end

		@girl.troopnumber.upcase!
		@girl.parentcell = try_to_format_phone(@girl.parentcell)
		@girl.othercell = try_to_format_phone(@girl.othercell)
    if @girl.save
      redirect_to :root
    else
      render 'new'
		end
  end

	def edit
		@girl = Girl.find(params[:id])
		verify_owner(@girl)
	end

	def update
		@girl = Girl.find(params[:id])
		verify_owner(@girl)

		if @girl.level != Level.where(name:"Tenderheart").first
			@girl.sessions.delete_all
			@girl.sessions << Session.find_by(id:params[:session_A_id])
			@girl.sessions << Session.find_by(id:params[:session_B_id])
			@girl.sessions << Session.find_by(id:params[:session_C_id])
			@girl.sessions << Session.find_by(id:params[:session_D_id])
		end

		@girl.troopnumber.upcase!
		@girl.parentcell = try_to_format_phone(@girl.parentcell)
		@girl.othercell = try_to_format_phone(@girl.othercell)

    if @girl.update_attributes(girl_params)
      redirect_to :admin
    else
      render 'edit'
		end
	end

	def destroy
		@girl = Girl.find(params[:id])
		verify_owner(@girl)
		@girl.destroy
		if (current_user.is_admin?)
			redirect_to :admin, notice: "Registration for #{@girl.first_name} #{@girl.last_name} was deleted." and return
		else
			redirect_to :root
		end
	end

	private

	def girl_params
		params.require(:girl).permit(:first_name, :last_name, :level_id, :dob, :fallgrade, :troopnumber, :tshirt_id, :dietary, :no_gluten, :medications, :parentcell, :othercell, :session_A, :session_B, :session_C, :session_D, :cooking_session, :horseback, :kayaking, :release)
	end
end
