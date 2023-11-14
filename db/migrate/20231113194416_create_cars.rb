class CreateCars < ActiveRecord::Migration[7.1]
  def change
    create_table :cars do |t|
      t.string :name, null: false
      t.string :model, null: false
      t.text :description
      t.string :img, null: false
      t.decimal :finance_fee, null: false
      t.decimal :total_amount, null: false
      t.integer :duration, null: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
