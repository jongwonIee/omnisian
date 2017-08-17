class CreateImages < ActiveRecord::Migration[5.0]
  def change
    create_table :images do |t|

      t.integer :order_id

      t.string :date
      t.string :url

      t.timestamps
    end
  end
end
