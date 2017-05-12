Rails.application.routes.draw do
  devise_for :users
  resource :users
  resource :students
  root "users#wel"
  get "/wel" => "users#wel"
   get "/login" => "users#login"
   get "new" => "students#new"
   get "/form" => "students#form"
  get "/listing" => "students#listing"
  get "/details" => "students#details"
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

