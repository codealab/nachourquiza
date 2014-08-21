class CreateAttachments < ActiveRecord::Migration
  def change
    create_table :attachments do |t|
      t.integer :delivery_id
      t.string :type
      t.string :file
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
