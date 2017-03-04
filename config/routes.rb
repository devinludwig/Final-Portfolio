Rails.application.routes.draw do
  devise_for :admins, :controllers => { :registrations => "registrations" }
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin', controller: 'admin'
  get 'home/index'

  get 'home/about'

  get 'home/projects'
  root to: "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
