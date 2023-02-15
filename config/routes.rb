Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :alumnos, only: [:index, :show, :create, :destroy]
      resources :cursos, only: [:index, :show]
      resources :families, only: [:index, :show]
      resources :inscriptions, only: [:index, :show]
    end
  end
  # resources :alumnos
  # resources :familis
  # resources :cursos
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
