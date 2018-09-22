Rails.application.routes.draw do
  resources :scores do 
    collection do
      get 'ajax_score'
    end
  end
  resources :players
  resources :teams
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
