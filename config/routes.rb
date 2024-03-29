Rails.application.routes.draw do

  root 'lists#index'

  resources :lists do
    resources :bookmarks, only: [ :new, :create ]
  end

  resources :bookmarks, only: :destroy
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
