class Permission < ActiveRecord::Base
  belongs_to :user
  belongs_to :role
  
  attr_accessible :role_ids
  
end
