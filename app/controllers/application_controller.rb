class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_params, if: :devise_controller?
  before_action :authenticate_user!
  before_action :player_map

  def player_map
    @player_map = {"QB" => "Quarterbacks", "RB" => "Running Backs", "WR" => "Wide Receivers",
    "TE" => "Tight Ends", "OT" => "Offensive Tackles", "G" => "Guards", "C" => "Centers",
    "DT" => "Defensive Tackles", "DE" => "Defensive Ends", "OLB" => "Outside Linebackers",
    "ILB" => "Inside Linebackers", "CB" => "Cornerbacks", "S" => "Safeties" }
  end

  protected

  def configure_permitted_params
    devise_parameter_sanitizer.permit(:sign_up,
              keys: [:username, :name, :bio, :location])
    devise_parameter_sanitizer.permit(:account_update,
              keys: [:username, :name, :bio, :location])
  end
end
