# x gets.chomp
  
def coin_changers(amount)
coin_value = {quarter: 25, Dime: 10, nickel: 5, penny: 1}
your_cents = {quarter: 0 , Dime: 0, nickel: 0, penny: 0} 



coin_value.each do | coin, value|
      while
      	value <= amount.to_i
      	your_cents[coin] += 1
      	amount = amount.to_i - value.to_i
      end
   end   
 your_cents.to_s
    

 end 