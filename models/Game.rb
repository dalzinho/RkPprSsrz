 require 'pry-byebug'

class Game


  def initialize()

    options = [:rock, :paper, :scissors]
    random_number = rand(0..2)
    @player2 = options[random_number]

    @rules = {
      rock: {
        rock: 'Your rock bashes together with my rock but both remain undamaged. DRAW!',
        paper: "Your rock is enveloped by my leaf of paper. I smirk at you, for you have lost.",
        scissors: "Your rock blunts the my scissors sending sparks a-flying in the process! You win this time!"
        },
      paper: {
        rock: "Your paper wraps the my rock with an air of smug self satisfaction! You bask in the glory of victory! QAPLA!!",
        paper: "Both of our pieces of paper sneer at each other to little avail. DRAW!",
        scissors: "With a casual snip, my scissors cut your paper. Better luck next time, monkey brain!"
        },
      scissors: {
        rock: 'My rock blunts your scissors sending sparks a-flying! You hang your head, dejected in defeat!',
        paper: 'With a casual snip, your scissors cut my paper. You have prevailed!',
        scissors: 'Lacking a suitable way to interface with each other, our scissors have little effect upon one another. DRAW!'
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