require_relative 'game'

class Interface

  attr_reader :game, :username

  def initialize
    puts 'Введите имя игрока:'
    @username = gets.chomp.to_s
  end


  def game_init
    loop do
      @game = Game.new(username)
      game.giving_away_money
      game.make_bet
      game.giving_away_cards
      round
      if game.over?
        if !game_new
          break
        end
      end
    end
  end

  def round
    i = 1
    loop do
      see_cards(game.player)
      game.player.move(command)
      see_cards(game.player)
      break if game.player.open_cards? || (game.player.hand.full? && i > 1)
      game.diller.move
      break
      break if game.diller.open_cards? || game.diller.hand.full?
      i = i + 1
    end
    puts 'Результат игрока ====================='
    see_cards(game.player)
    puts 'Результат диллера ====================='
    see_cards(game.diller)
    puts game.result
  end

  def see_cards(user)
    user.card_info.each { |card | puts card.sign }
  end

  def game_new
    puts 'Ееще играть yes/no'
    gets.chomp.to_s
  end

  def command
    puts 'Введите команду skip/take/open'
    gets.chomp.to_s
  end
end