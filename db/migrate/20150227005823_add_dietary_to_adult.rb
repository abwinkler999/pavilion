class AddDietaryToAdult < ActiveRecord::Migration
  	change_table(:adults) do |t|
	    t.string  "dietary"
	    t.boolean "no_gluten"
  	end
end
