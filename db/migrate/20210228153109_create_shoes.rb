class CreateShoes < ActiveRecord::Migration[6.1]
  def change
    create_table :shoes do |t|
      t.string :brand
      t.string :style
      t.string :size
      t.string :color
      t.string :stock

      t.timestamps
    end
  end
end
