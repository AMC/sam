class User < ActiveRecord::Base
  acts_as_authentic
  
  has_many :permissions
  has_many :roles, :through => :permissions
  
  #attr_accessible :name, :username, :password, :password_confirmation
  # 
   def role_symbols  
     roles.map do |role|  
       role.name.underscore.to_sym  
     end  
   end
end
