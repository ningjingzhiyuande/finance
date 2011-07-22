class Exchange < ActiveRecord::Base
  belongs_to :stock
  has_many :exchange_details
  class << self
     def record(hash,stock)
        exchange = self.find_or_initialize_by_stock_id_and_sdate stock.id,hash["sdate"]
        exchange.high = hash["high"]
        exchange.low = hash["low"]
        exchange.opening = hash["opening"]
        exchange.yestoday_close = hash["yestoday_close"]
        exchange.save
     end
  end
end
