class Player < ApplicationRecord

  @player = Player.all

  def quarterbacks
  @quarterback = @players.where(:position => "QB")
  end
end
