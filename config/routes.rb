Rails.application.routes.draw do
  get 'flats/:id', to: 'flats#show', as: :flat
  root to: 'flats#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

# get 'flats/index'
# get 'flats/show'
