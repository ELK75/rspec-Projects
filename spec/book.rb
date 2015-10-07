class Book
	def title
		@title
	end

	def title=(title)
		@title = titlieze(title)
	end

	private
	def titlieze(title)
		stop_words = %w(and in the of a an)
		title.split.map{|w| stop_words.include?(w) ? w : w.capitalize}.join(' ')
	end
end

@book = Book.new
@book.title = 'inferno'
puts @book.title
