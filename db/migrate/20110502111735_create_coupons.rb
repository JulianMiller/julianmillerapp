class CreateCoupons < ActiveRecord::Migration
  def self.up
    create_table :coupons do |t|
      t.integer :order_id
      t.integer :deal_id
      t.string :token
      t.integer :quantity
      t.decimal :total

      t.timestamps
    end
  end

  def self.down
    drop_table :coupons
  end
end
