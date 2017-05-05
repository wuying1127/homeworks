class Stack
  attr_reader :stack

  def initialize(stack)
    @stack = stack
  end

  def add(el)
    stack << el
  end

  def remove
    stack.pop
  end

  def show
    stack.dup
  end

end

# nums = []
#
# new_stack = Stack.new(nums)
#
# p new_stack.add(1)
# p new_stack.add(2)
# p new_stack.show
# p new_stack.remove
# p new_stack.show

class Queue
  attr_reader :queue

  def initialize(queue)
    @queue = queue
  end

  def enqueue(el)
    queue << el
  end

  def dequeue
    queue.shift
  end

  def show
    queue.dup
  end

end

# nums = []
#
# new_queue = Queue.new(nums)
#
# p new_queue.enqueue(1)
# p new_queue.enqueue(2)
# p new_queue.show
# p new_queue.dequeue
# p new_queue.show
require "byebug"

class Map
  attr_reader :map

  def initialize(map)
    @map = map
  end

  def assign(key, value)
    # debugger
    map.each_with_index do |ele, i|
      if ele[0] == key
        ele[1] == value
      end
    end

    map << [key, value]
  end

  def lookup(key)
    key_pos = []
    map.each_with_index do |ele, i|
      key_pos << i if ele[0] == key
    end

    return nil if key_pos.empty?
    key_pos
  end

  def remove(key)
    key_pos = lookup(key)
    if key_pos
      key_pos.each { |i| map.delete(map[i]) }
    end
  end

  def show
    map
  end

end

# nums = []
#
# new_map = Map.new(nums)
#
# p new_map.assign(1, 2)
# p new_map.assign(3, 4)
# p new_map.assign(5, 6)
# p new_map.lookup(8)
# p new_map.remove(5)
# p new_map.show
