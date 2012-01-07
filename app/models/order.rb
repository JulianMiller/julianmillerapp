class Order < ActiveRecord::Base
  belongs_to :user
  belongs_to :deal
  belongs_to :customer
  has_many   :line_items
  has_many   :coupons
  
  def deals
  end
  
  def total_price
    line_items.to_a.sum(&:full_price)
  end
  
  def description
  end
  
  def paypal_url(return_url)
    values = {
      :business => 'seller_1229899173_biz@railscasts.com',
      :cmd => '_cart',
      :upload => 1,
      :return => return_url,
      :invoice => id
    }
    line_items.each_with_index do |item, index|
      values.merge!({
        "amount_#{index+1}" => item.unit_price,
        "item_name_#{index+1}" => item.deal.name,
        "item_number_#{index+1}" => item.id,
        "quantity_#{index+1}" => item.quantity
      })
    end
    "https://www.sandbox.paypal.com/cgi-bin/webscr?" + values.to_query
  end
end
