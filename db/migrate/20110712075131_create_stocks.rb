class CreateStocks < ActiveRecord::Migration
  def self.up
    create_table :stocks do |t|
      t.string :code
      t.string :name
      t.string :kind
      t.integer :status,:default => 0
      t.timestamps
    end
  end

  def self.down
    drop_table :stocks
  end
end
