class Book
  def title=(book_title)
    _collection = []
    _exceptions = %w{the a an and in of}
    (book_title.split()).each do |_words|
      if _exceptions.include?(_words)
        _collection << _words
      else
        _collection << _words.capitalize
      end
    end
    _collection[0] = _collection[0].capitalize
    @title = _collection.join(" ")
  end
  def title
    @title
  end
end
