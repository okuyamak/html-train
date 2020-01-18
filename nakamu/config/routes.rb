Rails.application.routes.draw do
  get '/signup' => "users#signup"
  post "/users/create" => "users#create"
  get '/login' => "users#login_form"
  post '/login' => "users#login"
  post '/logout' => "users#logout"

  get'/year/home' => "quiz_year#home"
  get'/year/R01_10' => "quiz_year#r01_10"
  get'/year/R01_20' => "quiz_year#r01_20"
  get'/year/R01_30' => "quiz_year#r01_30"
  get'/year/R01_40' => "quiz_year#r01_40"
  get'/year/R01_50' => "quiz_year#r01_50"
  get'/year/R01_miss' => "quiz_year#r01_miss"
  get '/year/R01' => "quiz_year#R01"
  post '/year/update' => "quiz_year#update"

  get '/' => "home#top"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
