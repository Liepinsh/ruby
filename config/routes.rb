Rails.application.routes.draw do
  resources :teams
  resources :players do
    collection do
      get 'ajax_players'
    end
  end
  resources :scores do
    collection do
      get 'ajax_scores'
    end
  end
end
