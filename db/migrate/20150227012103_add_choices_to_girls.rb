class AddChoicesToGirls < ActiveRecord::Migration
	def change
	  	change_table(:girls) do |t|
		    t.integer "session_A_id"
		    t.integer "session_B_id"
		    t.integer "session_C_id"
		    t.integer "session_D_id"
		    t.string "cooking_session"
		    t.boolean "high_ropes"
	  	end

	  	change_table(:sessions) do |t|
		    t.remove  "description"
		    t.remove  "restriction_id"
	  	end
	end
end
