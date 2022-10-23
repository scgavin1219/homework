class GraphNode
    attr_accessor :value, :neighbors

    def initialize(value)
        self.val = val
        self.neighbors = []
    end

    def add_neighbor(node)
        self.add_neighbor << node
    end

    def bfs(starting_node, target_value)
        queue = [starting_node]
        visited = Set.new()

        until queue.empty?
            node = queue.shift
            unless visited.include?(node)
                return node.val if node.val ==target_value
                visited.add(node)
                queue += node.neighbors
            end
        end
        nil
    end



end