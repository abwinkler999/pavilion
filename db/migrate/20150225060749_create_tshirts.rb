class CreateTshirts < ActiveRecord::Migration
  def change
    create_table :tshirts do |t|
	    t.string :name
     	t.timestamps
    end
  end
end
