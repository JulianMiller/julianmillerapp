class OrdersController < ApplicationController
   before_filter :user_signed_in?
  # GET /orders
  # GET /orders.xml
  def index
    @orders = Order.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @orders }
    end
  end

  # GET /orders/1
  # GET /orders/1.xml
  def show
    @order = Order.find(params[:id])
	
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @order }
    end
  end

  # GET /orders/new
  # GET /orders/new.xml
  def new
    @order = Order.new
	@order.user = current_user
	@order.deal = Deal.find(params[:deal_id])
	
	@coupon = Coupon.new
	
	
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @order }
    end
  end

  # GET /orders/1/edit
  def edit
    @order = Order.find(params[:id])
	

  end

  # POST /orders
  # POST /orders.xml
  def create
    @order = Order.new(params[:order])
	  @order.deal = Deal.find(params[:deal_id])	
	  @order.user = current_user
	
	  @coupon = Coupon.new(params[:coupon])

	
    respond_to do |format|
      if @order.save  &&  @coupon.save  && charge_the_card
        format.html { redirect_to(@order, :notice => 'Order was successfully created.') }
        format.xml  { render :xml => @order, :status => :created, :location => @order }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @order.errors, :status => :unprocessable_entity }
      end
    end
  end

   

  # PUT /orders/1
  # PUT /orders/1.xml
  def update
    @order = Order.find(params[:id])
	@order.deal = Deal.find(params[:deal_id])	
	@order.user = current_user

    respond_to do |format|
      if @order.update_attributes(params[:order])
        format.html { redirect_to(@order, :notice => 'Order was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @order.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /orders/1
  # DELETE /orders/1.xml
  def destroy
    @order = Order.find(params[:id])
    @order.destroy

    respond_to do |format|
      format.html { redirect_to(orders_url) }
      format.xml  { head :ok }
    end
  end

  private
  
  def build_a_coupon(coupon)
	#todo Some of this logic would be happier in the coupon model
	#todo Currently we have a one model per form 
	
	@coupon.deal = @order.deal
	@coupon.token = current_user.username + current_user.created_at.to_s
	@coupon.total = @coupon.deal.price * @coupon.quantity
	@order.coupons << @coupon
  end 

  def charge_the_card	  
	  return true
  end 

end
