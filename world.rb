M='land'
o='water'
world=[[o,o,o,o,o,o,o,o,o,o],
	   [o,o,o,o,o,o,M,M,o,o],
	   [o,o,o,o,o,M,M,M,M,o],
	   [o,o,o,o,o,M,M,M,M,o],
	   [o,o,o,o,M,M,M,M,M,o],
	   [o,o,o,M,M,M,M,M,M,M],
	   [o,o,o,o,o,o,o,M,M,o],
	   [o,o,o,o,o,o,o,o,M,o],
	   [o,o,o,o,o,o,o,o,o,o],
	   [o,o,o,o,o,o,o,o,o,o]]
	   
def continent_size world, x, y
if x<0 or x>10 or y<0 or x>10
return 0
end
	if world[x][y]!='land'
	return 0
end

size=1
world[x][y]='counted land'

puts x
puts y
size=size+continent_size(world,x-1,y-1)
size=size+continent_size(world,x,y-1)
size=size+continent_size(world,x+1,y-1)
size=size+continent_size(world,x-1,y)
size=size+continent_size(world,x+1,y)
size=size+continent_size(world,x-1,y+1)
size=size+continent_size(world,x,y+1)
size=size+continent_size(world,x+1,y+1)



end
puts continent_size(world,5,5)







