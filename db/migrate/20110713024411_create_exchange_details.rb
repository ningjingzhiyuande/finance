class CreateExchangeDetails < ActiveRecord::Migration
  def self.up
    create_table :exchange_details do |t|
      t.integer :stock_id
      t.date :sdate
      t.float :current_price
      t.datetime :stime
      t.timestamps
    end
    add_index(:exchange_details,[:sdate])
    add_index(:exchange_details,[:stock_id,:stime])
  end

  def self.down
    drop_table :exchange_details
  end
end
