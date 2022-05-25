Rails.application.routes.draw do
  resources :ordens
  resources :receta
  
  resources :consulta
  namespace :api do
    namespace :v1 do
      resources :medicos
    end
  end

  namespace :api, defaults: {format: 'json'} do
    namespace :v1 do
      resources :usuarios
      resources :cita
      resources :historia
    end
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
