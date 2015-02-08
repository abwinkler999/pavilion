class FixGirls < ActiveRecord::Migration
  def change
  	change_table(:girls) do |t|
  		t.integer :user_id
  	end
  	change_table(:users) do |t|
  		t.remove :girl_id
  	end
  end
end
