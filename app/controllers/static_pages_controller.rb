class StaticPagesController < ApplicationController

  def home
  end

  def special
  end
  
  def admin
	bounce_nonadmin
  end

  def csv_girls
	bounce_nonadmin
	@girls = Girl.all
	respond_to do |format|
		format.html
		format.csv do
			headers['Content-Disposition'] = "attachment; filename=\"girl-registrations-list.csv\""
			headers['Content-Type'] ||= 'text/csv'
		end
	end
  end

def csv_adults
	bounce_nonadmin
	@adults = Adult.all
	respond_to do |format|
		format.html
		format.csv do
			headers['Content-Disposition'] = "attachment; filename=\"adult-registrations-list.csv\""
			headers['Content-Type'] ||= 'text/csv'
		end
	end
  end
end

private

def bounce_nonadmin
	unless user_signed_in? && current_user.is_admin?
		redirect_to action: "home"
	end
end
