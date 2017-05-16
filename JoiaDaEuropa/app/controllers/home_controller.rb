class HomeController < ApplicationController

    skip_before_action :authenticate_user!

    def index

        @today = Time.now

    end


end