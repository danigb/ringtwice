ActionController::Routing::Routes.draw do |map|




  map.root :controller => 'projects', :action => 'index'
  map.login '/login', :controller => 'user_sessions', :action => 'new'
  map.logout '/logout', :controller => 'user_sessions', :action => 'destroy', :method => :delete
  map.account '/account', :controller => 'users', :action => 'show'

  map.resources :user_sessions
  map.resources :users
  map.resources(:projects, :as => 'p') do |projects|
    projects.resources(:templates, :as => 't')
    projects.resources :gateways
    projects.resources :mails
    projects.resources(:groups, :as => 'g') do |group|
      group.resources :members, :as => 'm'
    end
  end
end
