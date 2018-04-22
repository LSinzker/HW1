

def palindrome?(string)
  string.downcase.gsub(/\W+/, ' ') == string.downcase.reverse.gsub(/\W+/, ' ')
end

def count_words(string)
  words = string.downcase.gsub(/\W+/, ' ').split
  wHash = Hash.new
  words.each{|word| wHash[word] = words.count(word)}
  wHash
end
# gsub ===> returns a copy of str with all accurences of pattern substituted for the second argument.
# "hello".gsub(/[aeiou]/, '<\1>')   => "h<e>ll<o>"

puts str = "Meu gato arranhou outro gato!"
puts count_words str