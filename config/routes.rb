Rails.application.routes.draw do
  mount StripeEvent::Engine, at: '/webhooks/stripe'
  devise_for :users
  resource :subscription
  resources :products
  root to: "products#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
