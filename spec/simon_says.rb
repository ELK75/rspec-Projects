def echo(x)
	x
end

def shout(x)
	x.upcase
end

def repeat(x, y = 2)
	x = x + " "
	new_x = (x) * y
	new_x[0..-2]
end

def start_of_word(x, y)
	x[0..y-1]
end

def first_word(x)
	x = x.split(" ")
	x[0]
end

def titleize(x)
	y = x.split(" ").each{|i| i != "the" && i != "and" && i != "over" ? i.capitalize! : i}
	y[0] = y[0].capitalize
	y.join(' ')
end

puts titleize("the bridge over")

