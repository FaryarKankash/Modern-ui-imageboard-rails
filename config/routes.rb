Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "pages#index"

  get 'categories/:id', to: 'categories#show'

  get 'post/:id', to: 'posts#show'
  
  post 'createpost', to: 'posts#create'

  post 'createcomment', to: 'comments#create'
end
