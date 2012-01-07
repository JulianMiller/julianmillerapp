class Coupon < ActiveRecord::Base
  belongs_to :order
  belongs_to :deal
end
