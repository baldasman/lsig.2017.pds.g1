class ClientAreaController < ApplicationController


    before_action :check_profile

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

    def check_profile

        if current_user.profile_id.nil?
            _profile = Profile.new name: current_user.email, account_type: 1
            _profile.save

            current_user.profile_id = _profile.id
            current_user.save
        end
    end

end
