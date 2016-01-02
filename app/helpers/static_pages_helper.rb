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

	def sessions_list(girl)
		sessions = Array.new
		if girl.level.name == "Tenderheart"
			sessions = ["Tenderheart", "Tenderheart", "Tenderheart", "Tenderheart"]
		else
			girl.sessions.each{ |x|
				sessions << format_for_csv(x.name)
			}
		end
		sessions
	end

	def appropriate_sessions_for_level(level, slot)
		binding.pry
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
