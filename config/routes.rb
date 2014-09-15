Rails.application.routes.draw do
  get 'assets/index'

  resources :states

  devise_for :users, :controllers => { :sessions => "json_sessions" }
  root to: "assets#index"
end
