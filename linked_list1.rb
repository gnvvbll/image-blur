class LinkedListNode
    attr_accessor :value, :next_node
  
    def initialize(value, next_node=nil)
        @value = value
        @next_node = next_node
    end
end

def reverse_list(node)
    # ADD CODE HERE
    reverse_stack = Stack.new

    while list
        # ADD CODE HERE
        reverse_stack.push(node.value)
        node = node.next_node
    end
    return reverse_stack.data
    # ADD CODE HERE
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

class Stack
    attr_reader :data

    def initialize
        @data = nil
    end

    # Push a value onto the stack
    def push(value)
        # IMPLEMENT ME!
        @data = LinkedListNode.new(value, @data)
    end

    # Pop an item off the stack.
    # Remove the last item that was pushed onto the
    # stack and return the value to the user
    def pop
        # I RETURN A VALUE
        first_item = @data.value
        @data = @data.next_node
        return first_item
    end

end