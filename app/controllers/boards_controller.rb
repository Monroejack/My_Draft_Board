class BoardsController < ApplicationController

  def index
    @board = Board.all
  end

  def new
    
  end
end
