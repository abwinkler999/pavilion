module StaticPagesHelper
	def format_for_csv(input)
		if input.nil?
			return "none"
		end
		input.gsub!(",", "")
		#input.sub!("&", "&amp;")
		input.length == 0 ? "none" : input
	end

	def yes_or_no(input)
		input ? "Y" : "N"
	end

	def sessions_for_particular_girl(girl)
		if girl.level.name == "Tenderheart"
			return nil
		end
		girl.sessions.each{ |x|
			sessions << x
		}
	end

	def session_names_for_particular_girl(girl)
		girl.sessions.map {|x| format_for_csv(x.name)}
	end

	def girl_session_for_particular_slot(girl, slot)
		girl.sessions.each{ |x|
			if x.slot == slot
				return x
			end
		}
		return nil
	end

	def appropriate_sessions_for_level(level, slot)
		Slot.where(name:slot).first.sessions.where(level:level).all
	end

	def what_is_in_slot(slot, girl)
		girl.sessions.each { |x|
			if x.slot.name == slot
				return x.name
			end
		}
		return "No choice"
	end
end
