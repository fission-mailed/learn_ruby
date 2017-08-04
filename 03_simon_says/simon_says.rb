#write your code here
def echo phrase
	phrase
end

def shout phrase
	phrase.upcase
end

def repeat phrase, times = 2
		"#{phrase} " * (times - 1) + "#{phrase}"
end

def start_of_word word, position
	word[0, position]
end

def first_word phrase
	space = phrase.index(" ")
	phrase[0, space]
end

def titleize phrase
	array = phrase.split
	string = ""
	array.each_with_index do |word, index|
		if index == 0 or index == array.length - 1
			string += word.capitalize + " "
		else
			case word.downcase
			when "and", "or", "over", "the", "in", "to", "for", "of" "a"
				string += word + " "
			else
				string += word.capitalize + " "
			end
		end
	end
	string[0, string.length - 1]
end