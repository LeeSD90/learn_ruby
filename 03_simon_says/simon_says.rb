def echo(string)
	return string
end

def shout(string)
	return string.upcase
end

def repeat(string, num = 2)
	repeat_string = "#{string} " * num
	return repeat_string.chomp(' ')
end

def start_of_word(string, num)
	i = 0
	return_string = ""
	while i < num
		return_string = return_string.concat(string[i])
		i += 1
	end
	return return_string
end

def first_word(string)
	return_string = ""
	string.split("").each do |i|
		if(i != " ")
			return_string = return_string.concat(i)
		else break
		end
	end
	return return_string
end

def titleize(string)
	words = string.split(' ')
	words.each do |word|
		if word == "and" || word == "over" || word == "the"
			word
		else
			word.capitalize!
		end
	end
	words[0].capitalize!
	words.join(' ')
end