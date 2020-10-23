Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'test', to: 'pages#test'
  get 'link', to: 'pages#link'
  get 'restaurants', to: 'pages#restaurants'
end
