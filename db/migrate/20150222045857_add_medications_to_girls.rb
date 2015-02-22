class AddMedicationsToGirls < ActiveRecord::Migration
  def change
  	change_table(:girls) do |t|
  		t.boolean :medications
  	end
  end
end
