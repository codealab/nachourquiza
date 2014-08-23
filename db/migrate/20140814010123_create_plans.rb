class CreatePlans < ActiveRecord::Migration
  def change
    create_table :plans do |t|
      t.integer :unit_id
      t.integer :lecture_id
      t.integer :position
      t.boolean :core

      t.timestamps
    end
  end
end