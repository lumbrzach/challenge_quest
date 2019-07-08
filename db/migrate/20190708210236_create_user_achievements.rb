class CreateUserAchievements < ActiveRecord::Migration[5.2]
  def change
    create_table :user_achievements do |t|
      t.integer :user_id
      t.integer :achievement_id

      t.timestamps
    end
  end
end
