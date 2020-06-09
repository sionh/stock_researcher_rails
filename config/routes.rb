Rails.application.routes.draw do
  resources :shikihos
  get 'shikihos/codes/:code', to: 'shikihos#code', as: :code_detail
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
