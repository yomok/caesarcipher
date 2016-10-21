dictionary =["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(str, dic)
  new_hash = {}
  dic.each do |word|
    if word == str
      new_hash[str] = new_hash.fetch(word, 0) + 1
    end
  end
  new_hash
end

puts substrings("below", dictionary)