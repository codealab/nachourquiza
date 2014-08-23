class CreateUnits < ActiveRecord::Migration
  def change
    create_table :units do |t|
      t.integer :course_id
      t.string :title
      t.integer :position

      t.timestamps
    end
  end
end