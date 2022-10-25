class Queue
    def initialize
        @queue = []
    end

    def enqueue(ele)
        @queue.push(ele)
    end

    def dequeue
        @queue.shift
    end

    def peek
        @queue.first
    end

    private

    attr_reader :queue