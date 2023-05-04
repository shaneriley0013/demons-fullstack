Rails.application.routes.draw do
  root "demons#index"
  resources :demons
end
