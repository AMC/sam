authorization do
  role :admin do
    has_permission_on [:announcements, :assignments, :comments, :courses, :roles, :users], :to => [:index, :show, :new, :create, :edit, :update, :destroy]
  end

  role :teacher do
    has_permission_on [:announcements, :assignments, :comments, :courses, :users], :to => [:index, :show, :new, :create, :edit, :update, :destroy]
  end  

  role :student do
    has_permission_on [:announcements, :assignments, :comments, :courses], :to => [:index, :show]
    has_permission_on [:users], :to => [:show, :edit, :update]
    #has_permission_on :users, :to => [:show, :edit, :update] do
    #  if_attribute :user => is { user }
    #end 
  end
end