class Assignment < ActiveRecord::Base
  belongs_to :course

  has_many :comments

  #attr_accessible :name, :description, :due_date, :points_possible
end
