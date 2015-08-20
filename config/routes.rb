Rails.application.routes.draw do
  get 'history/index'

  get 'history/create'

  get 'static_pages/help'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users, :controllers => { registrations: 'registrations' }
  root to: 'dashboard#index'
  resources :diets
  
end
