class CreateChallenges < ActiveRecord::Migration[5.2]
  def change
    create_table :challenges do |t|
      t.string :name
      t.string :description
      t.string :category
      t.string :author_id

      t.timestamps
    end
  end
end
