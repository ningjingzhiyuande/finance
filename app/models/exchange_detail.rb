class ExchangeDetail < ActiveRecord::Base
  belongs_to :exchange
  class << self
  def record(hash,stock)
    record = self.find_or_initialize_by_stock_id_and_stime stock.id,hash["stock_at"]
    record.update_attributes({"current_price"=>hash["current_price"],"sdate"=>hash["sdate"]})
  end

  end
end
