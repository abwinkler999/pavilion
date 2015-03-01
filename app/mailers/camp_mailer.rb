class CampMailer < ActionMailer::Base
  default from: "ahgsummercampmarengo@gmail.com"
  
  def welcome_email(user)
  	@user = current_user
  	mail(to: @user.email, subject: "Registering for AHG Summer Camp Marengo 2015")
  end
end