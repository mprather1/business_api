Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'businesses' => 'businesses#index'
      get 'business/:id/' => 'businesses#show'
      root 'businesses#index'
    end
  end



end
