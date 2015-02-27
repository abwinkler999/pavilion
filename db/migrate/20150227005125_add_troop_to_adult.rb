class AddTroopToAdult < ActiveRecord::Migration
	def change
	  	change_table(:adults) do |t|
		    t.string  "troopcontact"
	  	end
	end
end
