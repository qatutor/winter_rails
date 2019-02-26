Rails.application.routes.draw do
  root 'users#index'
  resources :users
  resources :questions
  get 'show' => 'users#show'
  get 'calc' => 'users#calculate'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
