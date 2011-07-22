class Stock < ActiveRecord::Base
  has_many :exchanges
  
  def full_code
    kind+code
  end
end
