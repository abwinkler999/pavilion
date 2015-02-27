class AddTroopToAdult < ActiveRecord::Migration
  	change_table(:adults) do |t|
	    t.string  "troopcontact"
  	end
end
