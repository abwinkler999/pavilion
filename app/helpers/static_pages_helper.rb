module StaticPagesHelper
	def format_for_csv(input)
		input.sub!(",", "")
		#input.sub!("&", "&amp;")
		input.length == 0 ? "none" : input
	end

	def yes_or_no(input)
		input ? "Y" : "N"
	end

	def sessions_list(girl)
		sessions = Array.new
		if girl.level.name == "Tenderheart"
			sessions = ["Tenderheart", "Tenderheart", "Tenderheart", "Tenderheart"]
		else
			sessions << (girl.session_A.nil? ? 'No choice' : format_for_csv(girl.session_A.name))
			sessions << (girl.session_B.nil? ? 'No choice' : format_for_csv(girl.session_B.name))
			sessions << (girl.session_C.nil? ? 'No choice' : format_for_csv(girl.session_C.name))
			sessions << (girl.session_D.nil? ? 'No choice' : format_for_csv(girl.session_D.name))
		end
		sessions
	end
end
