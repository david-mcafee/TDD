require 'rspec'
require 'stock_picker'

describe "#stock_picker" do
  let(:stocks) {[500, 300, 100, 200, 600, 900]}
  let(:most_profitable_pair) {[2,5]}

  it "should return a pair" do
    expect(stock_picker(stocks).length).to eq(2)
  end

  it "should be most profitable pair" do
    expect(stock_picker(stocks)).to eq(most_profitable_pair)
  end

  it "should return days not values" do
    expect(stock_picker(stocks)).not_to eq([100,900])
  end

  it "should return pairs that have increasing value" do
    expect(stock_picker(stocks)).not_to eq([5,4])
  end
end
