class Deal < ActiveRecord::Base
  has_many :orders
  belongs_to :location
  
  def price		
	return value - (value * (discount * 0.01))
  end 
  
  def off
    (((self.value-self.price)/self.value)*100).floor
  end
  
  def activated
    true if self.created_at
  end
  
  def savings
    self.value - self.price
  end
  
  def sold
    5
    #TODO: Implement
  end
  
  def remaining
    5
    #TODO: Implement
  end

  def max
    5
    #TODO: Implement
  end

end
