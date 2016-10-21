dictionary =["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(str, dic)
  new_hash = {}
  v = str.downcase.split(" ")
    v.each do |x|
      dic.each do |word|
      if x.include?(word)
        new_hash[word] = new_hash.fetch(word, 0) + 1
      end
    end
  end
  new_hash
end

puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)