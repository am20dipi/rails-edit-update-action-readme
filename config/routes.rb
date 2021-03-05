Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :articles, only: [:index, :show, :new, :create]


  get 'articles/:id/edit', to: 'articles#edit', as: :edit_article
  # a get route for our edit form
  # since the form will need to know which record is being edited,
  # this will need to be a dynamic route that accepts :id as a parameter

  patch 'articles/:id', to: 'articles#update'
  # a patch route to handle the update action 
  # this is also dynamic, accepting the same :id as a parameter
end
