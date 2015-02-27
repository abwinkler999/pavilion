class ChangeFallgradeToString < ActiveRecord::Migration
  def up
  	change_column :girls, :fallgrade, :string
  end
  
  def down
  	change_column :girls, :fallgrade, :integer
  end
end
