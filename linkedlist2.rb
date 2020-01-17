class LinkedList2
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end


def print_values(list_node)
  if list_node
    print "#{list_node.value} --> "
    print_values(list_node.next_node)
  else
    print "nil\n"
    return
  end
end



def reverse_list(list, previous=nil)

  while list != nil
    old_next_node = list.next_node
    list.next_node = previous
    previous = list
    list = old_next_node
  end

print_values(previous)   
end

def recurrsive_reverse(list)
  return list if list.next_node == nil
  current_node = list
  current_node.next_node = nil

  list = list.next_node
  recurrsive_reverse(list)
  list.next_node = current_node
end

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)

print_values(node3)

puts "-------"

reverse_list(node3)