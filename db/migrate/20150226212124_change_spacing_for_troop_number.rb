class ChangeSpacingForTroopNumber < ActiveRecord::Migration
	def change
	  	change_table(:adults) do |t|
		    t.remove  "troop_number"
		    t.string  "troopnumber"
	  	end
  	end
end
