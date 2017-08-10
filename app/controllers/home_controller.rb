class HomeController < ApplicationController
  def index
    @title = "List of Your Registries"
    @registries = @current_user.registries
  end
end
