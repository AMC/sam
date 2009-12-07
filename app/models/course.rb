class Course < ActiveRecord::Base
  has_many :enrollments
  has_many :users, :through => :enrollments
  
  has_many :announcements
  
  has_many :assignments
  
  #attr_accessible :name, :description
end
