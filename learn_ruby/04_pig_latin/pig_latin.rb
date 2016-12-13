#write your code here
def translate (phrase)
  # character = ""
  vowel = %w{a o i u e}
  list_of_results = []
  result = ""
  l = phrase.length
  (phrase.split()).each do |word|
    if (word[0..1]).include? "qu"
      list_of_results << word[2..l] + word[0..1] + "ay"
    elsif vowel.include?(word[0])
      list_of_results << word + "ay"
    elsif !(vowel.include?(word[0])) && !(vowel.include?(word[1]))
      if !(vowel.include?(word[2]))
        list_of_results << word[3..l] + word[0..2] + "ay"
      elsif (word[1..2]).include? "qu"
        list_of_results << word[3..l] + word[0..2] + "ay"
      else
        list_of_results << word[2..l] + word[0..1] + "ay"
      end
    elsif !(vowel.include?(word[0]))
      list_of_results << word[1..l] + word[0] + "ay"
    else
      list_of_results << word
    end
  end
  result = list_of_results.join(" ")
  return result
end
