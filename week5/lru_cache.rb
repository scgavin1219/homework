class LRUCache
    def initialize(size)
        @cache = []
        @size = size
    end

    def count
      @cache.length
    end

    def add(el)
        if @cache.include?(el)
            @cache.delete(el)
            @cache.push(el)
        elsif self.count >= @size
            @cache.shift
            @cache.push(el)
        else
            @cache.push(el)
        end
    end

    def show
      dupe = @cache.dup
      dupe
    end

    private
    # helper methods go here!

end