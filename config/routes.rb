Rails.application.routes.draw do
  resources :candidates, only: [:index, :show] # a restful route
end
