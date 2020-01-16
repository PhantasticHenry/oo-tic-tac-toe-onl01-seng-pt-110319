require 'pry'

class TicTacToe
  
  attr_accessor :board 
  
  def initialize
    @board = board || Array.new(9, " ")
  end
  
  WIN_COMBINATIONS = [
    [0,1,2],
    [3,4,5],
    [6,7,8],
    [0,3,6],
    [1,4,7],
    [2,5,8],
    [0,4,8],
    [6,4,2]
    ]
    
    def display_board
      puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
      puts "-----------"
      puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
      puts "-----------"
      puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
    end
    
    def input_to_index(user_input)
      user_input.to_i - 1
    end
    
    def move(position, player = "X")
      @board[position] = player
    end
    
  def position_taken?(position)
    @board[position] == " "
  end
  
  def valid_move?(position)
    # position.between?(0, 8) && @board[position] == " "
    position.between?(0, 8) && !position_taken?(position)
  end
  
  def turn_count
    # counter = 0 
    # @board.each do |slot|
    #   if slot == "X" || slot == "O"
    #     counter += 1
    #   end
    # end
    # counter
    
  end
  
  def current_player 
    # if turn_count.even?
    if turn_count % 2 == 0
      return "X"
    else 
      return "O"
    end
  end 
  
  def turn 
    puts "Please choose position on board between 1-9:"
    user_input = gets.strip
    index = input_to_index(user_input)
    if valid_move?(index)
      move(index, current_player)
      display_board
    else 
      turn
    end
  end
  
  def won?
    WIN_COMBINATIONS.find do |win_combo|
      if @board[win_combo[0]] == "X" && @board[win_combo[1]] == "X" && @board[win_combo[2]] == "X"
        return win_combo
      elsif
        @board[win_combo[0]] == "O" && @board[win_combo[1]] == "O" && @board[win_combo[2]] == "O"
        return win_combo
      end
      false || nil
    end
  end
  
  def full?
    @board.all? {|slot| slot != " "}
    # @board.all? {|slot| slot == "X" || slot == "O"}
  end 
  
  def draw?
    full? && !won?
  end 
  
  def over? 
    full? || won? || draw?
  end 
  
  def winner
    WIN_COMBINATIONS.find do |win_combo|
      if @board[win_combo[0]] == "X" && @board[win_combo[1]] == "X" && @board[win_combo[2]] == "X"
        return "X"
      elsif
        @board[win_combo[0]] == "O" && @board[win_combo[1]] == "O" && @board[win_combo[2]] == "O"
        return "O"
      end
    end
  end
  
  def play 
    until over? == true || won? do
      turn
    end
    if won?
      puts "Congratulations #{winner}!"
    else 
      draw?
      puts "Cat's Game!"
    end
  end
  

end




























