def translate( string )
  array = string.split(' ')
  vowels = [ 'a', 'e', 'i', 'o', 'u', 'y' ]

  new_array = array.map do |word|
    capitalized = false
    punctuation_rgx = /[\.!;:,\?]/ 

    if word.length == 1
      next word 
    end

    if word.match( punctuation_rgx )
      index = word.index( punctuation_rgx )
      punctuation = word.slice!( index, 1 )  
    end

    if word.capitalize == word
      capitalized = true
    end 

    while ! vowels.include?( word[0] )
      consonant = word.slice!( 0, 1 )
      
      if consonant == 'q' && word[0] == 'u'
        consonant = consonant + word.slice!( 0, 1 )
      end
      word = word + consonant
    end
   
    if capitalized 
      word = word.downcase.capitalize 
    end

    word = word + "ay"

    if punctuation != nil 
      word = word + punctuation
      puts word
    end 
      
    word
  end

  return new_array.join(' ')
end

translate( "rodk" )
