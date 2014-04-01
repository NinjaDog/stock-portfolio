require 'spec_helper'

describe "Viewing an individual stock" do

  it "shows the stock's details" do
    stock = Stock.find("aapl")

    visit "http://example.com/stocks/#{stock.symbol}"

    expect(page).to have_text(stock.name)
    expect(page).to have_text(stock.stock_exchange)
    expect(page).to have_text(stock.symbol)
    expect(page).to have_text(stock.open)
    expect(page).to have_text(stock.previous_close)
  end

end