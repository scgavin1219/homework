class Map
    def initialize
        @map = []
    end 
    
    def set(key, value)
        pair_index = @map.index { |pair| pair[0] == key }
        if pair_index
            @map[pair_index][1] = value
        else
            @map.push([key, value])
        end
        value
    end

    def get(key)
        @map.each { |pair| return pair[1] if pair.first == key }
        nil
    end

    def delete(key)
        value = get(key)
        @map.reject! { |pair| pair.first == key }
        value
    end

    def show
       deep_dup(@map)
    end
 
    private 
    attr_reader :map
    
    def deep_dup
        arr.map do |ele|
            if ele.is_a?(Array)
                deep_dup(ele)
            else
                ele
            end
        end
    end
    

end