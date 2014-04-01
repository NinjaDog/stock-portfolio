HistoricStockQuotes::Application.routes.draw do
  get "stocks/:symbol" => "stocks#show", as: 'stock'
  get "stocks/:symbol/history/:start_date/:end_date" => "stocks#history",  as: 'history'
end
