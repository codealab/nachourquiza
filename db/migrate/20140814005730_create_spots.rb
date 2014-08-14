class CreateSpots < ActiveRecord::Migration
  def change
    create_table :spots do |t|
      t.integer :student_id
      t.integer :group_id

      t.timestamps
    end
    add_index :spots, [:student_id, :group_id], unique: true
  end
end
