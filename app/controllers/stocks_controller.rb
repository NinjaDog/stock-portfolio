class StocksController < ApplicationController
  def show
    @stock = Stock.find(params[:symbol])
    @stocks = Stock.stock_history(params[:symbol], DateTime.now - 7, DateTime.now)
  end

  def history
    @stocks = Stock.stock_history(params[:symbol], params[:start_date], params[:end_date])
    @percent_change = (@stocks.first[1] - @stocks.last[1])/@stocks.last[1] * 100
  end
end