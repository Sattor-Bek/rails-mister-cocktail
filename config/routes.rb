Rails.application.routes.draw do
  resources :cocktails do
    resources :ingredients, only: [:show, :new, :edit, :update]
    resources :doses, only: [:new, :create]
  end
  resources :doses, only: [:destroy]
  # get 'doses/index'
  # get 'doses/show'
  # get 'doses/new'
  # get 'doses/create'
  # get 'doses/edit'
  # get 'doses/update'
  # get 'doses/destroy'
  # get 'ingredients/index'
  # get 'ingredients/new'
  # get 'ingredients/create'
  # get 'ingredients/edit'
  # get 'ingredients/show'
  # get 'ingredients/update'
  # get 'ingredients/destroy'
  # get 'cocktails/index'
  # get 'cocktails/new'
  # get 'cocktails/create'
  # get 'cocktails/edit'
  # get 'cocktails/show'
  # get 'cocktails/update'
  # get 'cocktails/destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
