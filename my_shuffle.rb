
def shuffle array
	shuffled=[]
while array.length>0
	x=rand(array.length)

	if array[x]>0
		shuffled.push array[x]
		array.delete_at(x)
	else
		break
	end
	puts"array=#{array}"
	puts"shuffled=#{shuffled}"
end
end
shuffle([1,2,3,4,5,6,7,8,9])