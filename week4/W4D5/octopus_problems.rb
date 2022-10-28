def sluggish_octopus(arr)
    max = 0
    fishy = "" 
    arr.each_with_index do |ele, idx1|
        arr.each_with_index do |ele2, idx2|
            if idx1 == idx2 && ele.length > max
                max = ele.length
                fishy = ele
            end
        end
    end
    fishy
end

arr = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh',
 'fiiiissshhhhhh'] # "fiiiissshhhhhh"

p sluggish_octopus(arr)

class Array
    def dominant_octopus(&prc)
        return self if self.length < 2
        prc ||= Proc.new { |x, y| x.length <=> y.length }

        mid = self.length / 2
        left = self[0...mid]
        right = self[mid..-1]

        left_sort = left.dominant_octopus(&prc)
        right_sort = right.dominant_octopus(&prc)

         merge(left_sort, right_sort, prc)
       
    end

    def merge(left, right, prc)
        merged = []
        until left.empty? || right.empty? 
            if prc.call(left.first, right.first) == -1
                merged << left.shift
            else
                merged << right.shift
            end
        end
        
        merged + left + right
    end
end

p arr.dominant_octopus

def clever_octopus(array)
    max = array.first.length
    word = array.first
    array.each do |fish|
        if fish.length > max
            max = fish.length
            word = fish
        end
    end
    word
end

p clever_octopus(arr)

#TIME TO DANCE

def slow_dance(direction, array)
  array.each_with_index do |dir, idx|
    return idx if dir == direction
  end
end

tiles = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]

p slow_dance("up", tiles)
p slow_dance("right-down", tiles)

def constant_dance!(direction, hash)
    hash[direction]
end

    tile = {
    "up" => 0,
    "right-up" => 1,
    "right"=> 2,
    "right-down" => 3,
    "down" => 4,
    "left-down" => 5,
    "left" => 6,
    "left-up" => 7
}

p constant_dance!("up", tile)
p constant_dance!("right-down", tile)