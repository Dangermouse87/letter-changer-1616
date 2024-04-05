# Pseudocode - What do we need to do?

# Define the alphabet
# Split the text into letters
# Iterate over the letters using .map
# Get the index of the letter from the alphabet
# If there is no index return the orig char
# Subtract three from the index
# Get the new letter from the alphabet
# Join

# def encrypt(text)
#   alphabet = ('A'..'Z').to_a
#     char = text.chars
#     char.map do |letter|
#       new_index = alphabet.index(letter)
#       if new_index
#         alphabet[new_index - 3]
#       else
#         letter
#       end
#     end.join
# end

# Refactor

# Initialize the alphabet as a global variable so we are not recreating the array during each iteration
ALPHABET = ("A".."Z").to_a

def encrypt(text)
  text.chars.map do |letter|
    index = ALPHABET.index(letter)
    index ? ALPHABET[index - 3] : letter
  end.join

end
