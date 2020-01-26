Rails.application.routes.draw do
  get '/' => "home#top"

  get '/signup' => "users#signup"
  post "/users/create" => "users#create"
  get '/login' => "users#login_form"
  post '/login' => "users#login"
  post '/logout' => "users#logout"

  get'/quiz/top' => "quiz_home#top"
  get '/quiz/base' => "quiz_home#base"



  get'/year/R01_10' => "quiz_year#r01_10"
  get'/year/R01_20' => "quiz_year#r01_20"
  get'/year/R01_30' => "quiz_year#r01_30"
  get'/year/R01_40' => "quiz_year#r01_40"
  get'/year/R01_50' => "quiz_year#r01_50"
  get'/year/R01_miss' => "quiz_year#r01_miss"

  get'/year/R01_type1' => "quiz_year#r01_type1"
  get '/year/base' => "quiz_year#base"
  post '/year/update' => "quiz_year#update"

  get 'type/type1' => "quiz_type#type1"
  get 'type/type1_2010' => "quiz_type#type1_2010"
  get 'type/type1_2011' => "quiz_type#type1_2011"
  get 'type/type1_2012' => "quiz_type#type1_2012"
  get 'type/type1_2013' => "quiz_type#type1_2013"
  get 'type/type1_2014' => "quiz_type#type1_2014"
  get 'type/type1_2015' => "quiz_type#type1_2015"
  get 'type/type1_2016' => "quiz_type#type1_2016"
  get 'type/type1_2017' => "quiz_type#type1_2017"
  get 'type/type1_2018' => "quiz_type#type1_2018"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
