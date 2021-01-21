Rails.application.routes.draw do
  get 'ingredients/index'

  get 'ingredients/new'

  get 'ingredients/create'

  get 'ingredients/show'

  get 'ingredients/edit'

  get 'ingredients/update'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :recipes
  resources :ingredients
end
