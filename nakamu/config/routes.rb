Rails.application.routes.draw do
  post "/users/create" => "users#create"
  get '/signup' => "users#signup"
  get '/year/R01' => "quiz_year#R01"
  get '/' => "home#top"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
