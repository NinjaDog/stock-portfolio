require 'spec_helper'

describe "Viewing an individual stock's history" do

  it "shows the stock's history" do
    start_date = "2014-01-01"
    end_date = "2014-01-31"
    symbol = "aapl"

    visit "http://example.com/stocks/#{symbol}/history/#{start_date}/#{end_date}"
  end

end