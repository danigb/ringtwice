ActionController::Routing::Routes.draw do |map|
  map.root :controller => 'users', :action => 'show'
  map.login '/login', :controller => 'user_sessions', :action => 'new'
  map.logout '/logout', :controller => 'user_sessions', :action => 'destroy', :method => :delete
  map.account '/account', :controller => 'users', :action => 'show'

  map.resources :user_sessions
  map.resources :users
  map.resources :projects
end
