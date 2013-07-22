#roman numerals
def roman


puts 'enter number between 0 and 500...'
number=gets.chomp.to_i
while true
	if number <1 || number >500
		puts 'try again'
		number=gets.chomp.to_i
	else
		break
	end
end
puts 'ok, that would be...'


array=[]
if number>=100
	c=number/100
	array=['C'*c]
	number=number%(c*100)
end
	
if number>=50 && number<100
	array.push 'L'
	number=number%50
end	

if number >=10 && number<50
	c=number/10
	array.push 'X'*c
	number=number%10
end	

if number >=5 && number<10
	array.push 'V'
	number=number%5
end	

if number >0 && number<5
 	array.push 'I'*number
		
	
end
	puts array.join('')
end

roman

