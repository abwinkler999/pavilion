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

	def at_kayak_limit
		return Girl.where(kayaking:true).count >= 24
	end

	def at_horseback_limit
		return Girl.where(kayaking:true).count >= 60
	end

	def try_to_format_phone(phone)
    if phone.length == 10
      return "(#{phone[0..2]}) #{phone[3..5]}-#{phone[6..9]}"
    elsif phone.length == 12 && phone[3] == "-" && phone[7] == "-"
      return "(#{phone[0..2]}) #{phone[4..6]}-#{phone[8..11]}"
    else
      return phone
    end
  end
end
