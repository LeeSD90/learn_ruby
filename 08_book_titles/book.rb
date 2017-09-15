class Book

	def title
		@title
	end

	def title=(title)
		@title = fix(title)
	end

	def fix(title)
		ignore = ["the", "in", "a", "an", "and", "of"]
		words = title.split
		words.length.times do |w|
			if (!(ignore.include?(words[w])) || w == 0)
				words[w] = words[w].capitalize
			end
		end
		@title = words.join(" ")
	end

end