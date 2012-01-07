class CreateDeals < ActiveRecord::Migration
  def self.up
    create_table :deals do |t|
      t.string :name
      t.string :intro
      t.string :photo
      t.text :description
      t.float :value
      t.integer :discount
      t.integer :location_id

      t.timestamps
    end
  end

  def self.down
    drop_table :deals
  end
end
