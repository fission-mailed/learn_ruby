class Book
# write your code here
	attr_reader :title
	
	def title=(book_title)
		@title = book_title.downcase
		words = @title.split(" ")
		words.each_with_index do |word, index|
			if index == 0
				word.capitalize!
			else
				case word
				when "a", "an", "and", "of", "in", "the"
					word
				else
					word.capitalize!
				end
			end
		end
		
		@title = words.join(" ")
	end
end
