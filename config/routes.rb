ActionController::Routing::Routes.draw do |map|

  map.root :controller => 'user_sessions', :action => 'new'
  map.login '/login', :controller => 'user_sessions', :action => 'new'
  map.login '/logout', :controller => 'user_sessions', :action => 'destroy'
  map.account '/account', :controller => 'users', :action => 'show'

  map.resources :user_sessions
  map.resources :users
end
