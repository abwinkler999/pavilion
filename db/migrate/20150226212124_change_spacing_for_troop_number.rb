class ChangeSpacingForTroopNumber < ActiveRecord::Migration
  	change_table(:adults) do |t|
	    t.remove  "troop_number"
	    t.string  "troopnumber"
  	end
end
