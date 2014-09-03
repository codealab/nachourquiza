class CreateDeliveries < ActiveRecord::Migration
  def change
    create_table :deliveries do |t|
      t.integer :unit_id
      t.integer :user_id
      t.text :notes

      t.timestamps
    end
  end
end