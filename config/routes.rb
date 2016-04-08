Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :businesses
    end
  end

  resources :businesses do
    collection { post :import }
  end

  get 'imports' => 'businesses#imports'

end
