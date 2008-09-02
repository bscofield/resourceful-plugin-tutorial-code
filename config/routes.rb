ActionController::Routing::Routes.draw do |map|
  map.resources :ratings

  map.resources :comments

  map.resources :discussions

  map.resources :rooms
  
  map.root :rooms
end
