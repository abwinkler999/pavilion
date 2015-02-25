class StaticPagesController < ApplicationController
  def home
  end

  def admin
	  unless user_signed_in? && current_user.is_admin?
	  	redirect_to action: "home"
	  end
  end
end
