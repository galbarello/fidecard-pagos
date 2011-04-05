class OrdersController < ApplicationController
before_filter :login_required

  def new
    @order = Order.new
  end

  def create
    if params[:commit]=='Validar Tarjeta'
      @order=Order.new(params[:order])
      @order.first_name="Pep"
      @order.last_name="Guardiola"

      render :action=> 'new'
    else
      @order = Order.new(params[:order])
      @order.ip_address = request.remote_ip
      if @order.save
        if @order.purchase
          render :action => "success"
        else
          render :action => "failure"
        end
      else
        render :action => 'new'
      end
    end
  end
end
