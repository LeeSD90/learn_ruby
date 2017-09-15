def translate(string)
	vowels = "aeiou"
	words = string.split

	for word in words
		if(word[0..2].count("qu") == 2)
			if(word[0..1].count("qu") == 2)
				word.concat(word[0..1])
				word.slice!(0..1)
			else
				word.concat(word[0..2])
				word.slice!(0..2)
			end
		elsif(word[0..2].count(vowels) == 0)
			word.concat(word[0..2])
			word.slice!(0..2)
		elsif(word[0..1].count(vowels) == 0)
			word.concat(word[0..1])
			word.slice!(0..1)
		elsif(word.chars.first.count(vowels) == 0)
			word.concat(word.chars.first)
			word.slice!(0)
		end

		if(word[0].count(vowels) == 1)
			word.concat("ay")
		end
	end

	words.join(" ")


end