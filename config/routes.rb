Rails.application.routes.draw do
  resources :cards do
  resources :comments
  end
  resources :duelists
  devise_for :users
  root to: "duelists#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
