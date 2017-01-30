 require 'pry-byebug'

class Game

  def initialize()

    options = [:rock, :paper, :scissors]
    random_number = rand(0..2)
    @player2 = options[random_number]

    @rules = {
      rock: {
        rock: 'The rocks bash together but remain undamaged. DRAW!',
        paper: 'The paper wraps the rock with an air of smug self satisfaction! Player 2 wins!',
        scissors: 'The rock blunts the scissors sending sparks a-flying! Player 1 wins!'
        },
      paper: {
        rock: 'The paper wraps the rock with an air of smug self satisfaction! Player 1 wins!',
        paper: 'The pieces of paper sneer at each other to little avail. DRAW!',
        scissors: 'With a casual snip, the scissors cut the paper. Player 2 wins!'
        },
      scissors: {
        rock: 'The rock blunts the scissors sending sparks a-flying! Player 2 wins!',
        paper: 'With a casual snip, the scissors cut the paper. Player 1 wins!',
        scissors: 'Lacking a suitable way to interface with each other, the scissors have little effect upon one another. DRAW!'
        }
      }
  end

  def rock()
    return @rules[:rock][@player2]
  end

  def paper()
    return @rules[:paper][@player2]
  end

  def scissors()
    return @rules[:scissors][@player2]
  end

end

# game = Game.new()
# puts game.rock()
# pry-byebug
# nil