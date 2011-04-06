class OrdersController < ApplicationController
before_filter :login_required

  def new
    @order = Order.new
  end

  def create
    if params[:commit]=='Validar'
      @order=Order.new(params[:order])
       @card=Card.where(:card_number=>@order.card_number).first()
      if @card!=nil
        @order.first_name=@card.first_name
        @order.last_name=@card.last_name
        @order.card_expires_on=@card.card_expires_on
      else
        @order.first_name=nil
        @order.last_name=nil
        @order.card_expires_on=nil
      end
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
