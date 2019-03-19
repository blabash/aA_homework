
class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @name1 = name1
    @name2 = name2
    @cups = Array.new(14) {[]}
    self.cups[0..5].each do |cup|
      4.times do
        cup << :stone
      end
    end
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
  end

  def valid_move?(start_pos)
    raise ArgumentError.new ("Invalid starting cup") if !((0..13) === start_pos) 
    raise ArgumentError.new ("Starting cup is empty") if self.cups[start_pos].empty? 
  end

  def make_move(start_pos, current_player_name)
    # p start_pos
    # p current_player_name
    stone_count = self.cups[start_pos].length
    self.cups[start_pos].clear
    cups_idx = start_pos 
    stone_count.times do 
      cups_idx = (cups_idx + 1) % 14
      if cups_idx == 6 && current_player_name == @name2
        cups_idx += 1
      elsif cups_idx == 13 && current_player_name == @name1
        cups_idx = 0
      end
      self.cups[cups_idx] << :stone
    end
    render
  end

  def next_turn(ending_cup_idx)
    return :switch
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
  end

  def winner
  end

  private
  attr_reader :name1, :name2

end
