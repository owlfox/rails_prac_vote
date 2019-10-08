Rails.application.routes.draw do
  
  
  resources :candidates  do 
    member do # with id
      post :vote
    end

    collection do
      post :vote
    end
  end
  
end
