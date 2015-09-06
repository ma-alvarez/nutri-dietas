Rails.application.routes.draw do


  get 'static_pages/help'
  resources :histories do 
  end
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users, :controllers => { registrations: 'registrations' }
  root to: 'dashboard#index'
  resources :diets
  
end
