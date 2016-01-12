class AddHorsebackToGirl < ActiveRecord::Migration
  def change
    change_table(:girls) do |t|
      t.boolean "horseback", default: false
    end
  end
end
