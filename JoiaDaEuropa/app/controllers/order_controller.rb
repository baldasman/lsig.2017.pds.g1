class OrderController < ApplicationController

    def list
        #@user = current_user
        #@id_usuario = @user.profile_id
        @orders = Order.where(profile_id: current_user.profile_id) #, status: 'pending'
        #@orders = Order.where("profile_id = ?", @id_usuario)
    end

    def show

        @order = Order.find(params[:id])

    end

    def new
        @order = Order.new
        @errors = flash[:errors]

    end

    def create

        @order = Order.new order_params
        @order.profile_id = current_user.profile_id
        @order.status = 'pending'

        if @order.save
            redirect_to order_show_path(@order.id)
        else
            flash[:errors] = @order.errors.messages
            redirect_to order_new_path
        end

    end

    def edit
        @order = @Order.find(params[:id])
    end

    def update
        @order = @Order.find(params[:id])
        order.update_attributes(order_param)
        #redirect_to :action => 'list', :profile_id => @order
    end

    def delete
        Order.find(params[:id]).destroy
        redirect_to order_list_path
    end

    private

    def order_params
        params.require(:order).permit(:delivery_date, :price, :client_comment, :attachment)
    end



end