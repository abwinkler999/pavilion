class AddTroopCoordinatorEmailToAdult < ActiveRecord::Migration
  def change
	  	change_table(:adults) do |t|
		    t.string  "troopcontact_email"
	  	end
	end
end
