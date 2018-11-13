Rails.application.routes.draw do
  devise_for :users
  get 'welcomes/home', to: 'welcomes#home'
# resources :videos
resources :users do
    resources :blogs
    resources :videos
end
resources :welcomes
root :to => 'welcomes#home'

get 'blogs/list', to: 'blogs#list'
get 'videos/list', to: 'videos#list'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
