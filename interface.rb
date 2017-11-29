require_relative 'game'

class Interface

  attr_reader :game

  def initialize
    puts 'Введите имя игрока:'
    username = gets.chomp.to_s
    @game = Game.new(username)

  end


  def game_init
    puts game.round
    # loop do
    #
    #   game_new if game.over?
    # end
  end

  def game_new
    puts 'Ееще играть yes/no'
    input = gets.chomp.to_s
    break unless input == 'yes'
  end

  def command
    puts 'Введите команду skip/take/open'
    game.command = gets.chomp.to_s
  end
end