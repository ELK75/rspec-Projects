def translate(word)
	word_array = word.split(' ')
	index = 0
	word_array.each do |x|
		word_array[index] = one_word_translate(x)
		index += 1
	end
	word_array.join(' ')
end

def one_word_translate(word)
	vowel_array = ['a', 'e', 'i', 'o', 'A', 'E', 'I', 'O']
	if vowel_array.include?(word[0])
		return word + 'ay'
	else
		word = word[1..-1] + word[0]
		word = one_word_translate(word)
	end
end

puts translate('I am emma and I am stupid')
