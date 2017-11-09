class CreateJoinTable < ActiveRecord::Migration[5.1]
  def change
    create_join_table :users, :expertise_areas, table_name: :users_expertise do |t|
       t.index [:user_id, :expertise_area_id], unique: true
       t.index [:expertise_area_id, :user_id], unique: true
    end
  end
end
