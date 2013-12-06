Notebook::Application.routes.draw do

  # Routes for the Note resource:
  # CREATE
  get '/notes/new', controller: 'notes', action: 'new', as: 'new_note'
  post '/notes', controller: 'notes', action: 'create', as: 'notes'

  # READ
  get '/notes', controller: 'notes', action: 'index'
  get '/notes/:id', controller: 'notes', action: 'show', as: 'note'

  # UPDATE
  get '/notes/:id/edit', controller: 'notes', action: 'edit', as: 'edit_note'
  patch '/notes/:id', controller: 'notes', action: 'update'

  # DELETE
  delete '/notes/:id', controller: 'notes', action: 'destroy'
  #------------------------------

  get "pages/mockup"

  root "notes#index"

end
