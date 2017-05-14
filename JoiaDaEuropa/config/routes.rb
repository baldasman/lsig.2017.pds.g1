Rails.application.routes.draw do

#	get 'static_pages/home'

#	get 'static_pages/quemsomos'

#	get 'static_pages/missao'

#	get 'static_pages/contactos'

	devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/profile/index'

  root to: 'home#index'

  get 'home', to: 'static_pages#home'

  get 'quemsomos', to: 'static_pages#quemsomos'

  get 'missao', to: 'static_pages#missao'

  get 'contactos', to: 'static_pages#contactos'

  get 'users/sign_out', to: 'static_pages#home'


end
