require "coin_change_kata"
describe CoinChangeKata do

  before do
    @coin_change = CoinChangeKata.new
  end

  it "returns a penny for a penny" do
    expect(@coin_change.change(1)).to eq [1]
  end

  it "returns two pennies for 2 cents" do
    expect(@coin_change.change(2)).to eq [1,1]
  end

  it "returns a nickel and a penny for 6 cents" do
    expect(@coin_change.change(6)).to eq [5,1]
  end

  it "returns a dime for 10 cents" do
    expect(@coin_change.change(10)).to eq [10]
  end

  it "returns a quarter and 2 pennies for 27 cents" do
    expect(@coin_change.change(27)).to eq [25,1,1]
  end

end
