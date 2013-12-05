Notebook::Application.routes.draw do

  get "pages/mockup"

  root "notes#index"

end
