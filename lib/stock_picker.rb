require 'byebug'

def stock_picker(stocks)
  stock_diff = 0
  position = []
  stocks.each_with_index do |stock1, idx1|
    stocks.each_with_index do |stock2, idx2|
      if idx2 > idx1 && stock2 - stock1 > stock_diff
        stock_diff = stock2 - stock1
        position = [idx1, idx2]
      end
    end
  end
  position
end
