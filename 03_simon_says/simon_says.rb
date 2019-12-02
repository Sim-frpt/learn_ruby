def echo( string )
  return string
end

def shout( string )
  return string.upcase
end

def repeat( string, repetition=2 )
  result = ''
  repetition.times do 
    result += string + ' '  
  end
  return result.rstrip
end

def start_of_word( string, nb_of_char )
  return string[ 0, nb_of_char ] 
end

def first_word( string )
  return string.split(' ')[0] 
end

def titleize( string )
  array = string.split(' ')
  small_words = [ "the", "and", "over", "of" ]

  new_array = array.map do |word|
    if small_words.include?( word )
      word
    else
      word.capitalize
    end
  end
  new_array.first.capitalize!

  return new_array.join(' ')
end
