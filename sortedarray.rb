unsorted=['e','d','a','c','b']
puts "start with #{unsorted}"
sorted=[]
while unsorted.length>0
	new_unsorted=[]
	smallest=unsorted.pop
	puts "'smallest' #{smallest} popped from end"
	unsorted.each do |tester|
		puts "tester is #{tester}"
		if tester<smallest
			new_unsorted.push smallest
			puts "if tester<smallest then new_unsorted is #{new_unsorted}"
			smallest=tester
		else
			new_unsorted.push tester
			puts "else new_unsorted is #{new_unsorted}"

		end
	end
	sorted.push smallest
	unsorted=new_unsorted
	puts "this is unsorted #{unsorted}"
	puts "and this is sorted #{sorted}"
end
