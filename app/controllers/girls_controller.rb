class GirlsController < ApplicationController
	def new
		@girl = Girl.new
	end

	def create
		@girl = Girl.new(girl_params)
	    if @girl.save
	      redirect_to :root
	    else
	      render 'new'
		end
    end

	def edit
		@girl = Girl.find(params[:id])
	end
end
