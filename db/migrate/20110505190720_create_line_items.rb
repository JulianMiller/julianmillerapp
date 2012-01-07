class CreateLineItems < ActiveRecord::Migration
  def self.up
    create_table :line_items do |t|
      t.decimal :unit_price
      t.integer :deal_id
      t.integer :order_id
      t.integer :quantity
      t.timestamps
    end
  end
  
  def self.down
    drop_table :line_items
  end
end