#write your code here
def translate (phrase)
  # character = ""
  vowel = %w{a o i u e}
  result = ""
  (0..2).each do |i|
    # result = (vowel.include?(phrase[i]) ? phrase : phrase + "ay")
    if vowel.include?(phrase[0])
      result = phrase + "ay"
    else
      result = phrase
    end
  end
  return result
end
