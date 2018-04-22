class WrongNumberOfPlayersError < StandardError; end
class NoSuchStrategyError <StandardError; end

def rps_game_winner(game)
  raise WrongNumberOfPlayersError unless game.length == 2
  game.each do |name, play|
    raise NoSuchStrategyError unless ['r', 'p', 's'].include? play.downcase
  end
  WhoWillComeOutOnTop game
end


def WhoWillComeOutOnTop(game)

  p1 = game[0][1].downcase
  p2 = game[1][1].downcase

  case p1
  when 'r'
    if p2 == 'p'
      game[1]
    else
      game[0]
    end
  when 'p'
    if p2 == 's'
      game[1]
    else
      game[0]
    end
  when 's'
    if p2 == 'r'
      game[1]
    else
      game[0]
    end
  end
end

def rps_tournament_winner(games)
  if games[0][0].is_a? String
    rps_game_winner games
  else
    rps_game_winner(games.map{|game| rps_tournament_winner(game)})
  end
end


#tgames = [[[["Kristen", "P"],["Dave", "S"]],[["Richard", "R"],["Michael", "S"]],],[[["Allen", "S"],["Omer", "P"]],[["David E.", "R"],["Richard X.", "P"]]]]




















