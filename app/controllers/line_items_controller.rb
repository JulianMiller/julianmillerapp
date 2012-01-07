class LineItemsController < ApplicationController
  def create
    @deal = Deal.find(params[:deal_id])
    @line_item = LineItem.create!(:order => current_order, :deal => @deal, :quantity => 1, :unit_price => @deal.price)
    flash[:notice] = "Added #{@deal.name} to order."
    redirect_to current_order_url
  end
end