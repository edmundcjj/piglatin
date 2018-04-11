# write your solution here
vowels = ['a', 'e', 'i', 'o', 'u']
consonants = ['b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'x', 'y', 'z']

def generate_piglatin(word)
  if word.start_with?('a', 'e', 'i', 'o', 'u')
    puts "Word starts with a vowel"
    word += 'way'
  end

  if word.start_with?('b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'x', 'y', 'z')
    puts "Word starts with a consonant"
    if word[0] == 'y'
      consonant = word[0]
      word[0] = ""
      word = word + consonant + "ay"
    else
      puts "Word contains letter y"
      first_part = word[0..(word.index('y')-1)]
      word.slice! first_part
      first_part += "ay"
      word += first_part
    end
  end
  
end

puts generate_piglatin('rhythm')
