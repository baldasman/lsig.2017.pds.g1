class ClientAreaController < ApplicationController




    def index

        @profile = current_user.profile

    end

    def edit_account

        @profile = current_user.profile

    end

    def save_account

        @profile = current_user.profile
        @profile.name = params[:profile][:name]

        if @profile.save
            redirect_to client_area_inicio_path
        else
            flash[:error] = @profile.errors.messages

            redirect_to client_area_edit_account_path
        end

    end



end
