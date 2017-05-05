class HomeController < ApplicationController

  skip before_action:authenticate_user
  def index


  end


end