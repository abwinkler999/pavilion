module ApplicationHelper
	
	def verify_owner(girl)
		if girl.user != current_user
		redirect_to :root
		end
	end
end
