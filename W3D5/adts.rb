  class Stack
    def initialize(array)
      @stack = array
    end

    def push(el)
      @stack.push(el)
      el
    end

    def pop
      @stack.pop
    end

    def peek
      @stack.last
    end

    private 

    attr_reader :stack
  end