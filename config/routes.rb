Rails.application.routes.draw do
  devise_for :users
  resource :users
  resource :students
  root "users#wel"
  get "/wel" => "users#wel"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

