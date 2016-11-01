class Node 
  attr_accessor :value, :next_node
  
  def initialize(value = nil, next_node = nil)
    @value = value
    @next_node = next_node
  end
end

class LinkedList
  
  def initialize 
    @head = nil
    @tail = nil
  end
  
  def append(value)
    new_node = Node.new(value)
    if @head.nil?
      @head = new_node
      @tail = new_node
    else
      node = @head
      until node.next_node.nil?
        node = node.next_node
      end
      node.next_node = new_node
      @tail = new_node
    end
  end
  
  def prepend(value)
    new_node = Node.new(value)
    if @head.nil?
      @head = new_node
      @tail = new_node
    else
      new_node.next_node = @head
      @head = new_node
    end
  end
  
  def size 
    if @head.nil?
      return "Size of list is 0"
    else
      count = 1 
      node = @head
      until node.next_node.nil?
        node = node.next_node
        count += 1
      end
      return "Size of list is #{count}"
    end
  end
  
  def head
    @head.value
  end
  
  def tail 
    @tail.value
  end
  
  def at(index)
    if index < 0 
      return "There are no nodes at index #{index}"
    else
      count = 1
      node = @head
      until count == index + 1
        node = node.next_node
        count += 1
      end
      return "Node at index #{index} is #{node.value}"
    end
  end
  
  def pop 
    node = @head 
    until node.next_node.nil?
      prev_node = node
      node = node.next_node
    end
    node = prev_node
    node.next_node = nil
    @tail = node
  end
  
  def contains?(value)
    node = @head
    until node.nil?
      if node.value == value
        return true
      end
      node = node.next_node
    end
    return false
  end
  
  def find(data)
    node = @head
    count = 0 
    until node.nil?
      if node.value == data
        return count
      else
        count += 1
      end
      node = node.next_node
    end 
    return nil
  end
  
  def to_s
    node = @head
    string = ""
    until node.nil?
      string = string + "( #{node.value} ) ->"
      node = node.next_node
    end
    puts string + "nil"
  end
  
  def insert_at(index, value)
    node = @head
    count = 0
    new_node = Node.new(value)
    if index == 0
      @head = new_node
      @head.next_node = node
    else
      until node.nil?
        if count == index - 1
          new_node.next_node = node.next_node
          node.next_node = new_node
        end
        node = node.next_node
        count += 1
      end
    end
  end
  
  
  def remove_at(index)
    node= @head
    count = 0
    if index == 0
      @head = node.next_node
    else
      until node.nil?
        if count == index - 1
          next_node1 = node.next_node
          node.next_node = next_node1.next_node
        end
        node = node.next_node
        count += 1
      end
    end
  end
  
  
end

list = LinkedList.new
list.append(4)
list.append(6)
list.append(8)
list.append(10)
list.prepend(2)
puts list.size
puts list.head
puts list.tail
puts list.at(3)
list.pop
puts list.contains?(8)
puts list.find(6)
list.to_s
list.insert_at(0, 20)
list.to_s
list.remove_at(3)
list.to_s