class WelcomeController < ApplicationController
  def index
  end

  def about
  end

  def contact
    @players = Player.all
    @quarterback = @players.where(:position => "QB")
  end

  private

  def player_params
    params.require(:player).permit(:first_name, :last_name, :school, :position)
  end
end
