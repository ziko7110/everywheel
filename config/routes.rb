Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'post#index'
  resources :post
  post 'post/create',to: 'post#create'
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
end
