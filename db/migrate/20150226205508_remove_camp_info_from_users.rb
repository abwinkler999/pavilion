class RemoveCampInfoFromUsers < ActiveRecord::Migration
  	change_table(:users) do |t|
	    t.remove  "first_name"
	    t.remove  "last_name"
	    t.remove  "address"
	    t.remove  "phone"
	    t.remove  "troop_number"
	    t.remove  "cpr"
	    t.remove  "first_aid"
	    t.remove  "halfweek",               default: false
	    t.remove  "tshirt_id"
  	end
  	change_table(:adults) do |t|
	    t.boolean  "halfweek",               default: false
	    t.integer  "tshirt_id"
  	end
end
