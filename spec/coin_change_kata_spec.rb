require "coin_change_kata"
describe CoinChangeKata do

  before do
    @coin_change = CoinChangeKata.new
  end

  describe "#change" do

    it "returns 1 penny for 1 cent" do
      expect(@coin_change.change(1)).to eq [1]
    end

    it "returns 2 pennies for 2 cents" do
      expect(@coin_change.change(2)).to eq [1,1]
    end

    it "returns 1 nickle, 1 penny for 6 cents" do
      expect(@coin_change.change(6)).to eq [5,1]
    end

    it "returns 1 quarter, 1 dime, 1 nicklel for 40 cents" do
      expect(@coin_change.change(40)).to eq [25,10,5]
    end

    it "returns 3 quarters, 1 nicklel, 3 pennies, for 83 cents" do
      expect(@coin_change.change(83)).to eq [25,25,25,5,1,1,1]
    end

  end

end
