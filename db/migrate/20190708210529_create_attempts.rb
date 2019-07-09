class CreateAttempts < ActiveRecord::Migration[5.2]
  def change
    create_table :attempts do |t|
      t.string :status, default: "Not Accepted"
      t.integer :user_id
      t.integer :challenge_id

      t.timestamps
    end
  end
end
