class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :title
      t.string :file
      t.text :description
      t.integer :delivery_id

      t.timestamps
    end
  end
end