class AdultsController < ApplicationController
	def new
		@adult = Adult.new
	end

	def create
		@adult = Adult.new(adult_params)
		@adult.user = current_user
		@adult.sessions << Session.find_by(id:params[:session_A_id])
		@adult.troopnumber.upcase!
	    if @adult.save
	      redirect_to :root
	    else
	      render 'new'
		end
  end

	def edit
		@adult = Adult.find(params[:id])
		verify_owner(@adult)
	end

	def update
		@adult = Adult.find(params[:id])
		verify_owner(@adult)
	    if @adult.update_attributes(adult_params)
	      redirect_to :root
	    else
	      render 'edit'
		end
	end

    def destroy
		@adult = Adult.find(params[:id])
		verify_owner(@adult)
		@adult.destroy
		redirect_to :root
	end

	private

	def adult_params
		params.require(:adult).permit(:first_name, :last_name, :address, :phone, :troopnumber, :tshirt_id, :cpr, :first_aid, :halfweek, :dietary, :no_gluten, :troopcontact, :troopcontact_email, :session_A)
	end
end
