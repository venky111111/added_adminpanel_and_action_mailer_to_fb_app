
Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users, controllers: { registrations: 'registrations' }
  root 'posts#index'
  resources :posts 
  resources :likes
  resources :postcomments
end
