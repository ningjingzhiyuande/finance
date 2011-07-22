namespace :finance do
   desc 'stock code'
   task :stock => :environment do
     ("000001".."002700").each do |i|
       Stock.create({:code=>i,:kind => "sz",:status =>0})
     end
     ("300001".."300260").each do |i|
       Stock.create({:code=>i,:kind => "sz",:status =>0})
     end

     ("600001".."601999").each do |i|
       Stock.create({:code=>i,:kind => "sh",:status =>0})
     end
   end

   desc "confirm stock"
   task :confirm_stock => :environment do
     require 'sina'
      stocks = Stock.where("status=100")
      stocks.each do |stock|
         hash = Sina.stock(stock.full_code)
         next if !hash
         ExchangeDetail.record(hash,stock)
         Exchange.record(hash,stock)
         #stock.last_at = hash["stock_at"]
         #stock.save
         
      end
   end
end
