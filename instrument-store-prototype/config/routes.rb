Rails.application.routes.draw do
  resources :stock do
    get 'move'
  end
  resources :instruments
end
