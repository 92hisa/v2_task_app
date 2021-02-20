Rails.application.routes.draw do
  root 'posts#index'
  get  '/new', to: 'posts#new'
  resources :posts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
