# Interactive command line blackjack game

another_game=1

while another_game=true

def calculate_total(cards) 
  # [['H', '3'], ['S', 'Q'], ... ]
  arr = cards.map{|e| e[1] }

  total = 0
  arr.each do |value|
    if value == "A"
      total += 11
    elsif value.to_i == 0 # J, Q, K
      total += 10
    else
      total += value.to_i
    end
  end

  #correct for Aces
  arr.select{|e| e == "A"}.count.times do
    total -= 10 if total > 21
  end

  total
end

puts "Welcome to Blackjack!"

suits = ['H', 'D', 'S', 'C']
cards = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']

deck = suits.product(cards)
deck.shuffle!

# Deal Cards

mycards = []
dealercards = []

mycards << deck.pop
dealercards << deck.pop
mycards << deck.pop
dealercards << deck.pop

dealertotal = calculate_total(dealercards)
mytotal = calculate_total(mycards)

# Show Cards

puts "Dealer has: #{dealercards[0]} and #{dealercards[1]}, for a total of #{dealertotal}"
puts "You have: #{mycards[0]} and #{mycards[1]}, for a total of: #{mytotal}"

while mytotal < 22

   puts ""
    puts "Another card? y/n"

    hit_or_stay = gets.chomp

  if hit_or_stay == "y"
     mycards << deck.pop
      mytotal = calculate_total(mycards)
      puts "You have #{mycards.last} for a total of #{mytotal}"
    else
      break
  end
end


  while dealertotal < 17
    dealercards << deck.pop
    dealertotal = calculate_total(dealercards)
    puts "Dealer has #{dealercards.last} for a total of #{dealertotal}"
  end

  if mytotal==21 && dealertotal==21
  puts "Draw!" 

  end

  if mytotal==21 || dealertotal > 21
  puts "You win"


  elsif dealertotal==21 || mytotal > 21
  puts "Dealer wins"
  

  elsif mytotal > dealertotal
  puts "You win"
  

  elsif dealertotal > mytotal
  puts "Dealer wins"

  elsif mytotal==dealertotal
  puts "Draw"
   
  
  
  end
puts "another game? y/n"

input = gets.chomp

  if input =="n"
    break
  else another_game=true
  end
end
      








