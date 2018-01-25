class MyQueue

  def initialize
    @store = []
  end

  def enqueue(arg)
    @store.push(arg)
  end

  def dequeue
    @store.shift
  end

  def peek
    @store.first
  end

  def size
    @store.length
  end

  def empty?
    @store.empty?
  end

end


class MyStack

  def initialize
    @store = []
    @min = nil
    @max = nil
  end

  def push(arg)
    if @max.nil?
      @max = arg
    end

    if @min.nil?
      @mmin = arg
    end

    new_min = arg < @min ? arg : @min
    new_max = arg > @max ? arg : @max
    @store.push([arg, new_min, new_max])
  end

  # [0, 1, 2]: 0 = val, 1 = min, 2 = max
  def pop
    if size == 1
      @min = nil
      @max = nil
      return @store.pop[0]
    else
      popped_ele = @store.pop
      @min = popped_ele[1]
      @max = popped_ele[2]

      popped_ele[0]
    end
  end

  def peek
    @store.last
  end

  def size
    @store.length
  end

  def empty?
    @store.empty?
  end

  def min

  end

  def max
  end
end

class MyStackQueue
  def initialize
   @deq_store  = MyStack.new
   @enq_store = MyStack.new
  end

  def empty?
  @deq_store.empty? && @enq_store.empty?
  end

  def size
   @deq_store.size + @enq_store.size
  end

  def enqueue(arg)
   until @enq_store.empty?
     @deq_store.push(@enq_store.pop)
   end
    @deq_store.push(arg)
  end

  def dequeue(arg)
   until @deq_store.empty?
     @enq_store.push(@deq_store.pop)
   end
    @enq_store.pop(arg)
  end
end
