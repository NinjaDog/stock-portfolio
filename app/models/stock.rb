require 'stock_quote'

class Stock
  def self.find(symbol)
    StockQuote::Stock.quote(symbol)
  end

  def self.stock_history(symbol, start_date, end_date)
    StockQuote::Stock.history(symbol, start_date, end_date).map { |stock|
      ["#{stock.date} 00:00:00 UTC", stock.close]
    }
  end
end