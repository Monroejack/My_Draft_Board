class PlayersController < ApplicationController
  before_action :set_player

  def index
    end

    private

    def set_player
    @players = Player.all.order(composite_rating: :asc)
    if params[:position]
    @players = @players.where(position: params[:position])
    end
  end
end
