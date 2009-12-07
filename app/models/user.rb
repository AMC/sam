class User < ActiveRecord::Base
  acts_as_authentic
  
  has_many :permissions
  has_many :roles, :through => :permissions
  
  has_many :enrollments
  has_many :courses, :through => :enrollments
  
  has_many :grades
  has_many :assignments, :through => :grades
  
  has_many :comments
  
  has_many :announcements
  
  #attr_accessible :name, :username, :password, :password_confirmation
  # 
   def role_symbols  
     roles.map do |role|  
       role.name.underscore.to_sym  
     end  
   end
end
