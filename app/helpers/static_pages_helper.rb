module StaticPagesHelper
	def format_for_csv(input)
		if input.nil?
			return "none"
		end
		input.gsub!(",", "")
		#input.sub!("&", "&amp;")
		input.sub!('""', "")
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
		possibles = Slot.where(name:slot).first.sessions.where(level:level).all.to_a
		possibles.keep_if { |x| x.girls.count < x.capacity }
	end

	def adult_sessions()
		sessions_array = Session.all.collect { |x| [ x.name, x.id] }
		returned_array = Array.new
		sessions_array.each { |x|
			if returned_array.assoc(x[0]) == nil
				returned_array << x
			end
		}
		returned_array.collect!{ |x| x[1] }
		Session.find(returned_array)
	end

	def session_table_name(session)
		return_string = "#{session.name} (#{session.level.name}) -- #{pluralize(session.girls.count, "Girl")}"
		if session.girls.count >= session.capacity
			return_string << " -- SESSION FULL"
		end
		return_string
	end

	def what_is_in_slot(slot, girl)
		girl.sessions.each { |x|
			if x.slot.name == slot
				return x.name
			end
		}
		return "No choice"
	end

	def non_tenderheart_sessions(this_slot)
		Session.where(slot:Slot.where(name:this_slot).first).where.not(level:Level.where(name:"Tenderheart").first).all
	end

end
