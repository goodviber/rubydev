
def calc num
	z=0
num.each do |x,y|
	p y
	z=z+y.to_i
end
	puts "z#{z}"

end

cards=[['h','2'],['h','4']]
calc cards