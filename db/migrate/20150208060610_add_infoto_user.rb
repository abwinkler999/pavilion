class AddInfotoUser < ActiveRecord::Migration
  def change
  	change_table(:users) do |t|
  		t.string :first_name
  		t.string :last_name
  		t.string :address
  		t.string :phone
  		t.string :troop_number
  		t.boolean :cpr
  		t.boolean :first_aid
  		t.integer :girl_id
  	end
  end
end
