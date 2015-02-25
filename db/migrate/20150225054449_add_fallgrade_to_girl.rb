class AddFallgradeToGirl < ActiveRecord::Migration
  def change
  	change_table(:girls) do |t|
  		t.integer :fallgrade
  		t.string :parentcell
  		t.string :othercell
  		t.string :troopnumber
  	end
  end
end
