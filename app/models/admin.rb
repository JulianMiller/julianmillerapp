class Admin < ActiveRecord::Base
  # Include default devise modules. Others available are: :confirmable, :recoverable,
  # :token_authenticatable, :lockable, :timeoutable and :activatable
  devise :database_authenticatable, :registerable, 
       :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :username, :password, :password_confirmation
end
