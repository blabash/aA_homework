class Stack
    def initialize
      # create ivar to store stack here!
      @stack = []
    end

    def push(el)
      # adds an element to the stack
      @stack.push(el)
    end

    def pop
      # removes one element from the stack
      @stack.pop
    end

    def peek
      # returns, but doesn't remove, the top element in the stack
      last = @stack.last
      last
    end
end

class Queue
    def initialize
      # create ivar to store queue here!
      @queue = []
    end

    def push(el)
      # adds an element to the queue
      @queue.push(el)
    end

    def shift
      # removes one element from the queue
      @queue.shift
    end

    def peek
      # returns, but doesn't remove, the top element in the queue
      first = @queue.first
      first
    end
end

class Map

    def initialize
        @map = []
    end

    def set(key, value)
        @map.each do |pair| 
            if pair[0] == key
                pair[1] = value 
                return "value reset!"
            end
        end

        @map << [key, value]
        "pair added!"
    end

    def get(key)
        @map.each {|pair| return pair if pair[0] == key}
        nil
    end

    def delete(key)
        @map.each_with_index do |pair, i|
            if pair[0] == key
                @map.delete_at(i) 
                return "deleted!"
            end
        end

        "key does not exist muhfugga"
    end

    def show
        @map.to_s
    end

end


# Remember, a map stores information in key-value pairs, where the keys are always unique. 
# When implemented with arrays, a map might look something like this: my_map = [[k1, v1], [k2, v2], [k3, v2], ...].

# Our Map class should have the following instance methods: set(key, value), get(key), delete(key), show. 
# Note that the set method can be used to either create a new key-value pair or update the value for a pre-existing key. 
# It's up to you to check whether a key currently exists!