Rails.application.routes.draw do
  resources :pens
  get '/',:to => "notes#index"
  get '/notes/:id', :to => "notes#show"
  post '/notes/create', :to => "notes#create"

  #get for link request
  #post for form request
end
