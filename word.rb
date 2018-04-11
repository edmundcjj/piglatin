# write your solution here
vowels = ['a', 'e', 'i', 'o', 'u']
consonants = ['b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'x', 'y', 'z']

def generate_piglatin(word)
  if word.start_with?('a', 'e', 'i', 'o', 'u')
    puts "Word starts with a vowel"
    word += 'way'
  else
    puts "Word starts with a consonant"
    consonant = word[0]
    word[0] = ""
    word = word + consonant + "ay"
  end

  return word
  # vowels.each do |vowel|
  #   if vowel == a[0]
  #     word += "way"
  #   end
  # end
  # return word
end

puts generate_piglatin('happy')
