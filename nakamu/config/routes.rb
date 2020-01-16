Rails.application.routes.draw do
  get '/signup' => "users#signup"
  post "/users/create" => "users#create"
  get '/login' => "users#login_form"
  post '/login' => "users#login"
  post '/logout' => "users#logout"

  get'/year/home' => "quiz_year#home"
  get'/year/R01_10' => "quiz_year#r01_10"
  get '/year/R01' => "quiz_year#R01"
  post '/year/update' => "quiz_year#update"

  get '/' => "home#top"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
