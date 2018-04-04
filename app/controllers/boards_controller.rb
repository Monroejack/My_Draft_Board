class BoardsController < ApplicationController

  before_action :set_board, only: [:show, :add_player_to_board]
  before_action :set_player
  before_action :authenticate_user!
  before_action :set_player_board, only: [:move_player_up, :move_player_down, :remove_player]

  def index
    @board = Board.all
  end

  def new
    @new_board = Board.new
  end

  def create
    @board = Board.create(name: params[:name])
    @board.update(user_id: current_user.id)
    redirect_to boards_show_path(id: @board.id)
  end

  def show

  end

  def add

  end

  def delete

  end

  def edit
  end

  def add_player_to_board
    PlayerBoard.create(player_id: params[:player_id], board_id: @board.id)
    redirect_to boards_show_path(id: @board.id)
  end

  def move_player_down
    @player_board.move_lower
    redirect_to boards_show_path(id: @player_board.board.id)
  end

  def move_player_up
    @player_board.move_higher
    redirect_to boards_show_path(id: @player_board.board.id)
  end

  def remove_player
    @player_board.destroy
    redirect_to boards_show_path(id: @player_board.board.id)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_board
      @board = Board.find(params[:id])
    end

    def set_player
      @players = Player.all
    end

    def set_player_board
      @player_board = PlayerBoard.find(params[:player_board_id])
    end
end
