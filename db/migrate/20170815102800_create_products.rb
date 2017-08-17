class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|

      t.integer :order_id

      t.string :name
      t.string :date
      t.string :title
      t.string :content
      t.string :username
      t.integer :index
      t.string :category
      t.integer :reply_count
      t.integer :view_count
      t.integer :like_count
      t.string :link

      t.timestamps
    end
  end
end
