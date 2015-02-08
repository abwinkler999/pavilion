class CreateJoinTableGirlSession < ActiveRecord::Migration
  def change
    create_join_table :girls, :sessions do |t|
      # t.index [:girl_id, :session_id]
      # t.index [:session_id, :girl_id]
    end
  end
end
