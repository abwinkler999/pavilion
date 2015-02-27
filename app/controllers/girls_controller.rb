class GirlsController < ApplicationController
	def new
		@girl = Girl.new
	end

	def create
		@girl = Girl.new(girl_params)
		@girl.user = current_user
		@girl.level = Level.find_by(id:params[:level_id])
		@girl.tshirt = Tshirt.find_by(id:params[:tshirt_id])
		@girl.session_A = Session.find_by(id:params[:session_A_id])
		@girl.session_B = Session.find_by(id:params[:session_B_id])
		@girl.session_C = Session.find_by(id:params[:session_C_id])
		@girl.session_D = Session.find_by(id:params[:session_D_id])
	    if @girl.save
	      redirect_to :root
	    else
	      render 'new'
		end
    end

	def edit
		@girl = Girl.find(params[:id])
	end

	def update
		@girl = Girl.find(params[:id])
		@girl.user = current_user
		@girl.level = Level.find_by(id:params[:level_id])
		@girl.tshirt = Tshirt.find_by(id:params[:tshirt_id])
		@girl.session_A = Session.find_by(id:params[:session_A_id])
		@girl.session_B = Session.find_by(id:params[:session_B_id])
		@girl.session_C = Session.find_by(id:params[:session_C_id])
		@girl.session_D = Session.find_by(id:params[:session_D_id])
		# => binding.pry
	    if @girl.update_attributes(girl_params)
	      redirect_to :root
	    else
	      render 'edit'
		end
	end

	def destroy
		@girl = Girl.find(params[:id])
		@girl.destroy
		redirect_to :root
	end

	private

	def girl_params
		params.require(:girl).permit(:first_name, :last_name, :level_id, :dob, :fallgrade, :troopnumber, :tshirt_id, :dietary, :no_gluten, :medications, :parentcell, :othercell, :high_ropes, :session_A, :session_B, :session_C, :session_D)
	end
end
