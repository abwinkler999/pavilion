class AddAdultToUser < ActiveRecord::Migration
  	change_table(:users) do |t|
  		t.integer :adult_id
  	end
end
