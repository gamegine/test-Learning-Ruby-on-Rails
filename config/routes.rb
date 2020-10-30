Rails.application.routes.draw do
  resources :games do
    resources :review, only: [ :new, :create]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'test', to: 'pages#test'
  get 'link', to: 'pages#link'
  get 'restaurants', to: 'pages#restaurants'

  post 'crud', to: 'crud#create'
  get 'crud', to: 'crud#readall', as: "crud_read_all"
  get 'crud/:id', to: 'crud#read', as: "crud_read_id"
  put 'crud/:id', to: 'crud#update', as: "crud_update_id"
  delete 'crud/:id', to: 'crud#delete', as: "crud_delete_id"
  #resources :crud
end