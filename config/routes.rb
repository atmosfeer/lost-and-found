Rails.application.routes.draw do
  get 'pets/:id/mark', to: 'pets#mark', as: 'mark'
  resources :pets
  root to: "pets#index"
end
