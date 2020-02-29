Rails.application.routes.draw do
  get '/' => "home#top"

  get '/signup' => "users#signup"
  post "/users/create" => "users#create"
  get '/login' => "users#login_form"
  post '/login' => "users#login"
  post '/logout' => "users#logout"

  get'/quiz/top' => "quiz_home#top"
  get '/quiz/base' => "quiz_home#base"

  # resources :users, :only => [:c]
  post '/year/update' => "quiz_year#update"

  get  'year_miss/:year' =>  "quiz_year#miss"
  get'/year/:year/:no' => "quiz_year#select"
  get'/year/:year' => "quiz_year#year"
  get  'type_miss/:type/:year' =>  "quiz_type#miss"
  get  'type/:type/:year' =>  "quiz_type#select"
  get 'type/:type' => "quiz_type#type"
  # get 'type/type1' => "quiz_type#type1"


  # post '/year/update' => "quiz_year#update"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
