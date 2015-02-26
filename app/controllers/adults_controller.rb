class AdultsController < ApplicationController
	def new
		@adult = Adult.new
	end

	def create
		@adult = Adult.new(adult_params)
		@adult.user = current_user
		@adult.tshirt = Tshirt.find_by(id:params[:tshirt_id])
	    if @adult.save
	      redirect_to :root
	    else
	      render 'new'
		end
    end

    def destroy
		@adult = Adult.find(params[:id])
		@adult.destroy
		redirect_to :root
	end

	private

	def adult_params
		params.require(:adult).permit(:first_name, :last_name, :address, :phone, :troopnumber, :tshirt_id, :cpr, :first_aid, :halfweek)
	end
end
