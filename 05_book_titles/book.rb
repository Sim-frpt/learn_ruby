class Book

  def title
    @title
  end

  def title=( title )
    title_words = title.split( ' ' )
    small_words = [ "the", 'a', "an", "and", "of", "in" ]  

    formated_words = title_words.map do |word|
      if small_words.include?( word )
        word
      else
        word = word.capitalize
      end
    end

    formated_words[0].capitalize!

    @title = formated_words.join( ' ' )
  end

end
