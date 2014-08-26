class CreateLectures < ActiveRecord::Migration
  def change
    create_table :lectures do |t|
      t.string :name
      t.text :content
      t.string :video_url
      t.integer :position, default: 0

      t.timestamps
    end
  end
end