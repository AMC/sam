class Role < ActiveRecord::Base
  has_many :permissions
  has_many :users, :through => :permissions
  
  #attr_accessible :name
end
