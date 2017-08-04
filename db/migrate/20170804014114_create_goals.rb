class CreateGoals < ActiveRecord::Migration[5.1]
  def change
    create_table :goals do |t|
      t.integer :target_score, default: 0, null: false, index: true
      t.integer :actual_score, default: 0, null: false, index: true
      t.timestamps
    end
  end
end
