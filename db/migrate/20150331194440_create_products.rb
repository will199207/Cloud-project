class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.decimal :price, :precision => 10, :scale => 2
      t.integer :target
      t.integer :pledges
      t.string :start
      t.string  :end
      t.integer :user_id
      t.timestamps null: false
    end
  end
end
