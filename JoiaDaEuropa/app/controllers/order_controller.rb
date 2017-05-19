class OrderController < ApplicationController

    def list

        @profile = Profile.find_by(id: current_user.profile_id)

        if @profile.account_type == 1

            @orders = Order.where(profile_id: current_user.profile_id) #, status_id: '1'

        else

          @orders = Order.order :id

        end

    end

    def show

        @order = Order.find(params[:id])
        @estado = Estado.all

    end

    def new

        @order = Order.new
        @errors = flash[:errors]

    end

    def create

        @order = Order.new order_params
        @order.profile_id = current_user.profile_id
        @order.status_id = 1
        #1 = Pendente, #2 = Em andamento, #3 = Finalizado, #4 = Recusado

        if @order.save
            redirect_to order_show_path(@order.id)
        else
            flash[:errors] = @order.errors.messages
            redirect_to order_new_path
        end

    end

    def edit
        @estado = Estado.all
        @order = Order.find(params[:id])
        @profile = Profile.find_by(id: current_user.profile_id)
    end

    def update
        @profile = Profile.find_by(id: current_user.profile_id)
        if @profile.account_type == 1
            @order = Order.find(params[:id])
            @order.update_attributes order_params
            if @order.save
                redirect_to order_show_path(@order.id)
            else
                flash[:errors] = @order.errors.messages
                redirect_to order_new_path
            end
        else
            @order = Order.find(params[:id])
            @order.update_attributes orderADM_params
            if @order.save
                redirect_to order_show_path(@order.id)
            else
                flash[:errors] = @order.errors.messages
                redirect_to order_new_path
            end
        end

    end

    def delete
        Order.find(params[:id]).destroy
        redirect_to order_list_path
    end

    def recreate
        @order = Order.find(params[:id])
        @profile = Profile.find_by(id: current_user.profile_id)

    end

    private

    def order_params
        params.require(:order).permit(:delivery_date, :price, :client_comment, :attachment)
    end

    def orderADM_params
        params.require(:order).permit(:delivery_date, :price, :status_id, :client_comment, :attachment)
    end



end