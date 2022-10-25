class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @name1 = name1
    @name2 = name2
    @cups = Array.new(14) { Array.new }
    place_stones
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
    @cups.each_with_index do |pos, index|
      if index != 6 && index != 13
        4.times { pos << :stone}
      end
    end
  end

  def valid_move?(start_pos)
      if start_pos < 0 || start_pos > 13 
        raise "Invalid starting cup"
      end
      if @cups[start_pos].empty?
        raise "Starting cup is empty"
      end
  end

  def make_move(start_pos, current_player_name)
    queue = @cups[start_pos]
    @cups[start_pos] = []

    i = start_pos
    until queue.empty? 
      i += 1
      i = 0 if i > 13

      if i == 6 
        @cups[6] << queue.pop if current_player_name == @name1
      elsif  i == 13 
        @cups[13] << queue.pop if current_player_name == @name2
      else
        @cups[i] << queue.pop
      end
    end

    render
    next_turn(i)
  end

  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
    if ending_cup_idx == 6 || ending_cup_idx == 13
      :prompt
    elsif @cups[ending_cup_idx].length == 1
      :switch
    else
      ending_cup_idx
    end
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    (0...6).all? { |i| @cups[i].empty? } || (7...12).all? { |i| @cups[i].empty? }
  end

  def winner
   play1 = @cups[6].length
   play2 = @cups[13].length

   if play1 == play2
      :draw
   elsif play1 > play2
    @name1
   else
    @name2
   end
  end
end
