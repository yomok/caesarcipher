
def caesar_cipher(words, num)
  arr =  []
  words.each_char do |c|
    shift = c.ord + num
    if c.match(/[a-z]/)
      if shift < 122 ? arr << shift.chr : arr << (shift - 26).chr
      end
    elsif c.match(/[A-Z]/)
      if shift < 90 ? arr << shift.chr : arr << (shift - 26).chr
      end
    else
      arr << c
    end
  end
  p arr.join("")
end

caesar_cipher("What a string!", 5)
