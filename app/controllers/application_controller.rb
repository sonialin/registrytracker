class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_filter :set_current_user

  def set_current_user
    @current_user = Coordinator.find(2)
  end

end
