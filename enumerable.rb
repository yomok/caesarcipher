module Enumerable
  def my_each
    i = 0 
    while i < self.length
      yield(self[i])
      i += 1
    end
    self
  end
=begin
  def my_each
    for item in self
      yield(item)
    end
    self
  end
=end
  
  
  
  def my_each_with_index
    i = 0
    while i < self.length
      yield(self[i], i)
      i += 1
    end
    self
  end
  
  def my_select
    result = []
    self.my_each do |x|
      result.push(x) if yield(x)
    end
    result
  end
  
  
  def my_all?
    self.my_each do |x|
      return false if yield(x) == false
    end
    return true
  end
  
  def my_any?
    self.my_each do |x|
      return true if yield(x)
    end
    return false
  end
  
  
  def my_none?
    self.my_each do |x|
      return false if yield(x) == true
    end
    return true
  end
  
  def my_count(arg=nil)
    count = 0 
    if block_given? 
      self.my_each do |x|
        if yield(x) == true
          count += 1
        end
      end
     elsif arg != nil
        self.my_each do |x|
          if x == arg
            count +=1
          end
        end
      else
          return self.length
      end
    return count
  end
  
  
  #or
  
  def my_count(input = nil)
    if block_given?
      self.my_select { |n| yield(n)}.length
    elsif input != nil
      self.my_select { |n| n==input}.length
    else
      self.size
    end
  end
  
  def my_map
    result = []
    self.my_each do |x|
      result << yield(x)
    end
    result
  end
  
  def my_inject(total=nil)
    if total
      self.each do |x|
        total = yield(total, x)
      end
     else
      total = self[0]
      self[1..-1].each do |x|
        total = yield(total, x)
      end
    end
    return total
  end


  
end

