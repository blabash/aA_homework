class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
      @sequence_length = 1
      @game_over = false
      @seq = []
      self.play
  end

  def play
      self.take_turn
      until @game_over == true
        self.take_turn
      end
      self.game_over_message
      self.reset_game
  end

  def take_turn
      p self.show_sequence
      self.require_sequence
      if @game_over == false
          self.round_success_message
          @sequence_length += 1
      end
  end

  def show_sequence
      self.add_random_color
  end

  def require_sequence
      puts "Repeat back sequence, one color at a time"
      @seq.each do |color|
        input = gets.chomp
        @game_over = true if input.downcase != color
      end
  end

  def add_random_color
      @seq << COLORS[0]
      @seq << COLORS[rand(0...COLORS.length)]
  end

  def round_success_message
      "good job!"
  end

  def game_over_message
      "game over, too bad."
  end

  def reset_game
      @sequence_length = 1
      @game_over = false
      @seq = []
  end
end

simon = Simon.new