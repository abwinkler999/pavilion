class AddTshirtToUsersAndGirls < ActiveRecord::Migration
  def change
  	change_table(:girls) do |t|
  		t.integer :tshirt_id
  	end
  	change_table(:users) do |t|
  		t.integer :tshirt_id
  	end
  end
end
