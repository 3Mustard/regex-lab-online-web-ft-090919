def starts_with_a_vowel?(word)
  word.match(/\A[AEIOUaeiou]/) != nil
end

def words_starting_with_un_and_ending_with_ing(text)
  text.scan(/un\w+ing/)
end

def words_five_letters_long(text)
  text.scan(/\b\w{5}\b/)
end

def first_word_capitalized_and_ends_with_punctuation?(text)
  text.match(/\A[A-Z]/) != nil && text.match(/\W$/) != nil
end

def valid_phone_number?(phone)
  a = phone.match(/\d\d\d\d\d\d\d\d\d\d/)
  b = phone.match(/\W\d\d\d\W\d\d\d\W\d\d\d\d/)
  c = phone.match(/\d\d\d\W\d\d\d\W\d\d\d\d\/)
  d = phone.match(/\W\d\d\d\W\d\d\d\d\d\d\d/)
  
  if a || b || c || d
    true
  else 
    false 
  end
end
