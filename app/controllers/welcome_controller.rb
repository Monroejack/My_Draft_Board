class WelcomeController < ApplicationController

  before_action :set_user
  before_action :authenticate_user!, only: [:show_user, :index]


  def index
  end

  def about
  end

  def contact
  end

  def show_user
    @my_boards = current_user.boards
  end

  private

  def set_user
    @user = current_user
  end
end
