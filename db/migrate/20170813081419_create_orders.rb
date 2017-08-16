class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|

      t.integer :user_id
      t.integer :length
      t.boolean :navercafe
      t.boolean :dcinside
      t.boolean :twitter
      t.string :keyword

      t.timestamps
    end
  end
end
