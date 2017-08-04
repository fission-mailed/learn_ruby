#write your code here
def translate phrase
	phrase.downcase!
	string = ""
	array_of_words = phrase.split(" ")
	array_of_words.each do |word|
		array_of_letters = word.split("")
		until array_of_letters[0] == "a" or array_of_letters[0] == "e" or array_of_letters[0] == "i" or array_of_letters[0] == "o" or array_of_letters[0] == "u"
			if array_of_letters[0] == "q" and array_of_letters[1] == "u"
				first = array_of_letters.shift
				second = array_of_letters.shift
				array_of_letters.push(first)
				array_of_letters.push(second)
			else
				first = array_of_letters.shift
				array_of_letters.push(first)
			end
		end
		string += array_of_letters.join + "ay "
	end
	string[0, string.length - 1]
end