#BLACKJACK
deck=[['h',2],['h',3],['h',4],['h',5],['h',6],['h',7],['s',2],['s',3],['s',4],['s',5],['s',7],['d',2],['d',3],['d',4],['d',5],['d',6],['d',7],['c',2],['c',3],['c',4],['c',5],['c',6],['c',7]]

deck.shuffle!
player_total=0
dealer_total=0


while dealer_total<17
player_cards=[]
dealer_cards=[]
player_cards.push deck.pop
dealer_cards.push deck.pop




player_cards.each do
 |x,y| puts "player card #{x},#{y}"
 player_total=player_total+y 
 puts"player total #{player_total}"
end

dealer_cards.each do
 |x,y| puts "dealer card #{x},#{y}"
 dealer_total=dealer_total+y 
 puts"dealer total #{dealer_total}"
end
puts"another card? y/n"
input=gets.chomp
if input=="y"
	puts "ok"
else break
end
end

if player_total>21
	puts "player bust"
end
if dealer_total>21
	puts "dealer bust"
end
if player_total>dealer_total && player_total<22
	puts "you win!"
end







