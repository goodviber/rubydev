#leap year
#checks number or letter entry
while true
puts "enter start year"
startyear=gets.to_i
puts "enter end year"
endyear=gets.to_i
#try again if entry incorrect
if startyear ==0 || endyear ==0
puts "try again, numbers only..."
else break
end
end
puts "ok"
#calculate leap years
while endyear >= startyear
if startyear%400==0
puts "#{startyear} is a leapyear"
elsif startyear%100==0
elsif startyear%4==0
puts "#{startyear} is a leapyear"
end
startyear+=1
end
