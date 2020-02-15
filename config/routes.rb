Rails.application.routes.draw do
    resources :requests, path: :client
    get 'uf', to: 'units#index', as:'units'
    get 'uf/:client/:fecha', to: 'units#show', as: 'unit' 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
