class CreateOrders < ActiveRecord::Migration
  def self.up
    create_table :orders do |t|
      t.string :first_name
      t.string :last_name
      t.string :address_1
      t.string :address_2
      t.string :card_number
      t.integer :security_code
      t.string :city
      t.string :state
      t.string :zip_code
      t.string :phone
      t.integer :exp_month
      t.integer :exp_year

      t.timestamps
    end
  end

  def self.down
    drop_table :orders
  end
end
