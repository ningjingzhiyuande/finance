require 'open-uri'
class Sina
  URL = "http://hq.sinajs.cn/list="
  class << self
  def stock(code)
    analy_stock(open_url(code))
  end
  #TODO open for chrome or machine
  def open_url(code)
    url = URL+code
    puts url
    open(url).read
  end
  def analy_stock(content)
    str = content.gsub(/\n|\"/,"")
    value = str.split("=").last 
    datas = value.split(",")
    return nil if datas.size<9
    hash = {"name"=>datas[0],"opening"=>datas[1],"yestoday_close"=>datas[2],"current_price"=>datas[3],"high"=>datas[4],"low"=>datas[5],"stock_at"=> datas[-2]+" "+datas[-1],"sdate"=>datas[-2]}
  end
  end
end
#Sina.stock("sh600503")
