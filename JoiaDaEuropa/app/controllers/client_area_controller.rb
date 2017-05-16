class ClientAreaController < ApplicationController

    before_action :check_account

    def index

        @account = current_user.account

    end

    def edit_account

        @account = current_user.account

    end

    def save_account

        @account = current_user.account
        @account.name = params[:account][:name]

        if @account.save
            redirect_to client_area_index_path
        else
            flash[:error] = @account.errors.messages

            redirect_to client_area_edit_account_path
        end

    end

    private

    def check_account

        @account = Account.find_by(user_id: current_user.id)

        if @account.nil?
            current_user.account = Account.new name: current_user.email
            current_user.save
        end

    end

end
