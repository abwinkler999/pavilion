class AddAdultToUser < ActiveRecord::Migration
	def change
	  	change_table(:users) do |t|
	  		t.integer :adult_id
	  	end
	  end
end
