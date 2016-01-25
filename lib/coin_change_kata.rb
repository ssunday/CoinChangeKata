class CoinChangeKata

  def change(amount_of_money)
    change_amounts = [25,10,5,1]
    change = []
    change_amounts.each do |coin|
      while amount_of_money >= coin
        change << coin
        amount_of_money -= coin
      end
    end
    change
  end
  
end
