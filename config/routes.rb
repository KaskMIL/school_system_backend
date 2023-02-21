Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :alumnos
      resources :cursos
      resources :families
      resources :inscriptions
      resources :years
      resources :concepts
      resources :payments
    end
  end
  # resources :alumnos
  # resources :familis
  # resources :cursos
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
