class Book
	def initialize(title)
		@title = title
	end

	def title()
		not_capitalize_array = ['the', 'a', 'an', 'and', 'in']
		book_title_words = @title.split(' ')
		index = 0
		book_title_words.each do |word|
			if !not_capitalize_array.include?(word)
				book_title_words[index] = word.capitalize
			else
				book_title_words[index] = word
			end
			index += 1
		end
		return book_title_words.join(' ')
	end
end

book = Book.new('yoo ya bish the')
puts book.title()