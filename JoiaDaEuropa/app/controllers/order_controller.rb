class OrderController < ApplicationController

  def list
    #@user = current_user
    #@id_usuario = @user.profile_id
    @orders = Order.all
    #@orders = Order.where("profile_id = ?", @id_usuario)
  end

  #def show
  #  @order = Order.all
  #end

  def new
    @order = Order.new
  end

  def create
    @order = Order.new params[:order]
    @order.save
  end

  private
    def order_params
      params.require(:order).permit(:delivery_date, :price, :client_comment, :attachment)
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
    redirect_to :action => 'list'
  end

end