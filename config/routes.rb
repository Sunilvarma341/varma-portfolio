Rails.application.routes.draw do

  # the below is login and logout paths
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register'}
 
  # get 'logout', to: 'devise/sessions#destroy'

  
  resources :portfolios , except: [:show]  
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'
  get 'pages/home'
  get 'about' => 'pages#about'
  get 'contact', to: 'pages#contact'
  get 'me' => "pages#me"

  #get 'portfolio/:id' => "portfolios#destroy", as: 'portfolio_destroy'

  get "angular-items", to: "portfolios#angular" 
  resources :blogs do
    member do 
      get :toggle_status
    end  
  end  
  
  root to: 'pages#home'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  
end
