class GirlsController < ApplicationController
	def new
		@girl = Girl.new
	end

	def create
		@girl = Girl.new(girl_params)
		@girl.user = current_user
		@girl.level = Level.find_by(id:params[:level_id])
		@girl.tshirt = Tshirt.find_by(id:params[:tshirt_id])
	    if @girl.save
	      redirect_to :root
	    else
	      render 'new'
		end
    end

	def edit
		@girl = Girl.find(params[:id])
	end

	def destroy
		@girl = Girl.find(params[:id])
		@girl.destroy
		redirect_to :root
	end

	private

	def girl_params
		params.require(:girl).permit(:first_name, :last_name, :level_id, :dob, :fallgrade, :troopnumber, :tshirt_id, :dietary, :no_gluten, :medications, :parentcell, :othercell)
	end
end
