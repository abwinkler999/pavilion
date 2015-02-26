class CreateAdults < ActiveRecord::Migration
  def change
    create_table :adults do |t|
		t.string :first_name
		t.string :last_name
		t.string :address
		t.string :phone
		t.string :troop_number
		t.boolean :cpr
		t.boolean :first_aid
		t.integer :user_id
      t.timestamps
    end
  end
end
