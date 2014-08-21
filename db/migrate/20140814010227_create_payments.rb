class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.integer :user_id
      t.integer :concept_id
      t.integer :quantity
      t.text :clarification
      t.date :date

      t.timestamps
    end
  end
end