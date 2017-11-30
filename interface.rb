require_relative 'game'

class Interface

  attr_reader :game

  def initialize
    puts 'Введите имя игрока:'
    username = gets.chomp.to_s
    @game = Game.new(username)

  end


  def game_init
    loop do
      game.giving_away_money
      game.make_bet
      game.giving_away_cards
      round
      break
      game_new if game.over?
    end
  end

  def round
    loop do
      see_cards(game.player)
      game.player.move(command)
      see_cards(game.player)

      break if game.player.open_cards? # || game.player.hand.full
      game.diller.move
      see_cards(game.diller)
      break
      break if game.diller.open_cards? #|| game.diller.hand.full
    end
    game.result
  end

  def see_cards(user)
    user.card_info.each { |card | puts card.sign }
  end

  def game_new
    puts 'Ееще играть yes/no'
    input = gets.chomp.to_s
    break unless input == 'yes'
  end

  def command
    puts 'Введите команду skip/take/open'
    gets.chomp.to_s
  end
end