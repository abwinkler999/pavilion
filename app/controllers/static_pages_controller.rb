class StaticPagesController < ApplicationController
  def home
  end

  def admin
	  unless user_signed_in? && current_user.is_admin?
	  	redirect_to action: "home"
	  end
  end

  def csv
	unless user_signed_in? && current_user.is_admin?
		redirect_to action: "home"
	end
	@users = User.find_by(attending: true)
	@girls = Girl.all
	respond_to do |format|
		format.html
		format.csv do
			headers['Content-Disposition'] = "attachment; filename=\"registrations-list\""
			headers['Content-Type'] ||= 'text/csv'
		end
	end
  end
end
