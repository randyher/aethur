Rails.application.routes.draw do
  get 'welcomes/index'
resources :videos
resources :users do
    resources :blogs
    resources :videos
end
resources :welcome
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
