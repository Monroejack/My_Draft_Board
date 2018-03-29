class BoardsController < ApplicationController

  before_action :set_board, only: [:show]

  def index
    @board = Board.all
  end

  def new
    @new_board = Board.new
  end

  def create
    @board = Board.create(name: params[:name])
    redirect_to boards_show_path(id: @board.id)
  end

  def show
  end

  def edit
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_board
      @board = Board.find(params[:id])
    end
end
