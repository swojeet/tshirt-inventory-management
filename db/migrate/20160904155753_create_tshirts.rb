class CreateTshirts < ActiveRecord::Migration
  def change
    create_table :tshirts do |t|
      t.string :name
      t.string :type
      t.string :color
      t.string :size
      t.integer :stock_in
      t.integer	:stock_out
      t.integer	:user_id
      t.timestamps null: false
    end
    add_index :tshirts, :user_id
  end
end
