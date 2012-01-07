class LineItem < ActiveRecord::Base
  belongs_to :order
  belongs_to :deal
  
  def full_price
    unit_price * quantity
  end
end
