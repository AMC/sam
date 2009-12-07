class Announcement < ActiveRecord::Base
  belongs_to :course
  
  #attr_accessible :name, :description, :course_id
end
