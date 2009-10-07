ActionController::Routing::Routes.draw do |map|
  map.root :controller => 'projects', :action => 'index'
  map.login '/login', :controller => 'user_sessions', :action => 'new'
  map.logout '/logout', :controller => 'user_sessions', :action => 'destroy', :method => :delete
  map.account '/account', :controller => 'users', :action => 'show'

  map.resources :user_sessions
  map.resources :users
  map.resources :projects do |projects|
    projects.resources :audience_lists do |audience_list|
      audience_list.resources :members
    end
  end
end
