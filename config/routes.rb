Rails.application.routes.draw do
  get 'notes/new'
  post '/notes' => 'notes#create'
  get '/notes' => 'notes#index'
  get '/notes/:id' => 'notes#show',as: 'note'
  patch '/notes/:id/' => 'notes#update', as: 'update_note'
  get '/notes/:id/edit' => 'notes#edit', as: 'edit_note'
  delete '/notes/:id' =>'notes#edit', as: 'destroy_note'

  root 'home#top'
  get '/about' => 'home#about'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
