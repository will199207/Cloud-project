class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.decimal :price, :precision => 10, :scale => 2
      t.integer :target
      t.integer :pledges
      t.date :expiration
      t.reference :user
      t.timestamps null: false
    end
  end
end
