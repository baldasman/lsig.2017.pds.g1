class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    before_action :authenticate_user!
    before_action :check_lang
    before_action :check_profile

    private

    def check_lang

        # todo: change lang

    end

    def check_profile

        if current_user && current_user.profile_id.nil?
            _profile = Profile.new name: current_user.email, account_type: 1
            _profile.save

            current_user.profile_id = _profile.id
            current_user.save
        end
    end

end
