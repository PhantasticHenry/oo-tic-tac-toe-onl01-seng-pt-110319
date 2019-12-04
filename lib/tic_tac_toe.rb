# require 'pry'
# class TicTacToe
  
#   def initialize(board = nil)
#     @board = board || Array.new(9, " ")
#   end
  
#   WIN_COMBINATIONS = [
#     [0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[6,4,2]
#     ]
 
#   def display_board
#     puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
#     puts "-----------"
#     puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
#     puts "-----------"
#     puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
#   end
  
#   def input_to_index(user_input)
#     user_input.to_i - 1
#   end
  
#   def move(position, player = "X")
#     @board[position] = player
#   end
  
#   def position_taken?(position)
#     if @board[position] == " "
#       false
#     else
#       true
#     end
#   end
  
#   def valid_move?(position)
#     if position.between?(0,8) && !position_taken?(position)
#       true
#     else
#       false || nil
#     end
#   end
  
#   def turn_count
#     counter = 0 
#     @board.each do |turn|
#       if turn == "X" || turn == "O"
#         counter += 1
#       end
#     end
#       counter
#   end
        
#   def current_player
#     if turn_count.even?
#       "X"
#     else
#       "O"
#     end
#   end 
  
#   def turn
#     puts "Please enter position on board from 1-9"
#     user_input = gets.strip
#     puts "You have chose position #{user_input}."
#     index = input_to_index(user_input)
#     if valid_move?(index)
#       move(index, current_player)
#       display_board
#     else
#       puts "Invalid input. Please try again."
#       turn
#     end
#   end 
  
#   def won?
#     WIN_COMBINATIONS.detect do |winning_combo|
#       if (@board[winning_combo[0]]) == "X" && (@board[winning_combo[1]]) == "X" && (@board[winning_combo[2]]) == "X"
#         return winning_combo
#       elsif (@board[winning_combo[0]]) == "O" && (@board[winning_combo[1]]) == "O" && (@board[winning_combo[2]]) == "O"
#         return winning_combo
#       end
#       false || nil
#     end 
#   end
  
#   def full? 
#     # if @board.all? {|slots| slots == "X" || slots == "O"}
    
#     if @board.all? {|slots| slots != " "}
#       true
#     else 
#       false
#     end
#   end
     
#     def full?
#           if @board.all? { |slot| slot == "X" || "O"  }
#             true
#         else
#             false
#       end
#     end 
     
#   def draw?
#     full? && !won? 
#   end 
  
#   def over?
#     full? || won? || draw?
#   end
  
#   def winner
#     WIN_COMBINATIONS.detect do |winning_combo|
#       if (@board[winning_combo[0]]) == "X" && (@board[winning_combo[1]]) == "X" && (@board[winning_combo[2]]) == "X"
#         return "X"
#       elsif (@board[winning_combo[0]]) == "O" && (@board[winning_combo[1]]) == "O" && (@board[winning_combo[2]]) == "O"
#         return "O"
#       end
#       false || nil
#     end
#   end
  
#   def play
#     while over? == false
#       turn
#     end
#     if won?
#       puts "Congratulations #{winner}!"
#     elsif draw?
#       puts "Cat's Game!"
#     end
#   end
# end


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
      
    end 
end




























