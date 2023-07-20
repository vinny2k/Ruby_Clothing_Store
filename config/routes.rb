Rails.application.routes.draw do
  
  get 'savelist/update'
  get 'savelist/index'

  get 'static_pages/home'
  get 'static_pages/about'
  get 'description/cart'
  get 'description/checkout'
  get '/home', to: 'static_pages#home'
   
   resources :products, only: [:description] do
     resources :description
end 
  
  get '/about', to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
  
  post "apply_newsletter", :controller=>"static_pages"
  post "/savelist/update", :controller=>"savelist"
  get "/savelist/banner", :controller=>"savelist"
    resources :categories, only: [:index] do
    resources :products, only: [:index]
     end

  devise_for :users, controllers: {omniauth_callbacks: 'users/omniauth_callbacks'}
  root to: 'static_pages#home'


 end