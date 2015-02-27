class ChangeDateToString < ActiveRecord::Migration
  def up
  	change_column :girls, :dob, :string
  end
  
  def down
  	change_column :girls, :dob, :date
  end
end
