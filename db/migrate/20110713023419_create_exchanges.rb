class CreateExchanges < ActiveRecord::Migration
  def self.up
    create_table :exchanges do |t|
      t.integer :stock_id
      t.date :sdate
      t.float :opening
      t.float :yestoday_close
      t.float :high
      t.float :low
      t.timestamps
    end
    add_index(:exchanges,[:stock_id,:sdate])
  end

  def self.down
    drop_table :exchanges
  end
end
