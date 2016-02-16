module ApplicationHelper

	def verify_owner(girl)
		if girl.user != current_user
		redirect_to :root
		end
	end

	def at_tenderheart_limit
		tenderheart = Level.where(name:"Tenderheart").first
		return Girl.where(level:tenderheart).count >= 20
	end
end
