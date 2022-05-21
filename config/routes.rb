Rails.application.routes.draw do
  resources :historia
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
    end
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
