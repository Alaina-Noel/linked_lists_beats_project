class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def append(value)
    if @head
      find_tail.next_node = Node.new(value)
    else
      @head = Node.new(value)
    end
  end

  def find_tail
    node = @head
    return node if !node.next_node
    return node if !node.next_node while (node = node.next_node)
  end


  def count
    return 0 if !@head
    temp = self.head
		count = 0
		while (temp != nil) 
			temp = temp.next_node
			count += 1
		end
		return count
  end

  def to_string
    return "" if !@head
    string = ""
    temp = self.head
		while (temp != nil) 
			string << temp.data + " "
      temp = temp.next_node
		end
    string.chop
  end
end