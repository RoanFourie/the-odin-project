#write your code here
def echo(words)
    return words
end

def shout(words)
    return words.upcase
end

def repeat(words, times=2)
  i = times
  final = words
  while i > 1 do
    final = final + ' ' + words
    i -= 1
  end
  return final
end

def start_of_word(words, times=2)
  return words[0..(times-1)]
end

def first_word(words)
  list = words.split(' ')
  return list[0]
end

def titleize(words)
  new_list = []
  little_words = %w{ a an and over the}
  list = words.split(' ')
  list.each do |word|
    new_list << (little_words.include?(word) ? word : word.capitalize)
  end
  new_list[0] = new_list[0].capitalize
  return new_list.join(" ")
end
