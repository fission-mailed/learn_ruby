#write your code here
def translate phrase
	phrase.downcase!
	string = ""
	
	array_of_words = phrase.split(" ")
	#Creates an array whose elements are the individual words of the string
	
	array_of_words.each do |word|
		array_of_letters = word.split("")
		#Creates an array whose elements are the letters of the word
		
		vowel_string = "aeiou "
		vowels = vowel_string.split("")
		
		if !(array_of_letters - vowels == array_of_letters)
		#Prevents infinite looping if word contains no vowels
			
			until array_of_letters[0] == "a" or array_of_letters[0] == "e" or array_of_letters[0] == "i" or array_of_letters[0] == "o" or array_of_letters[0] == "u"
				
				if array_of_letters[0] == "q" and array_of_letters[1] == "u"
					first = array_of_letters.shift
					second = array_of_letters.shift
					array_of_letters.push(first)
					array_of_letters.push(second)
					#If a word contains "qu", this is treated as a single entity
				else
					first = array_of_letters.shift
					array_of_letters.push(first)
				end
			
			end
			
		end
		
		string += array_of_letters.join + "ay "
	end
	
	string[0, string.length - 1]
end
