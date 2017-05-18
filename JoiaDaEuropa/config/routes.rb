Rails.application.routes.draw do

  get 'attachments/index'

  get 'attachments/new'

  get 'attachments/show'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/profile/index'
  get '/client_area/index'

  get '/client_area/edit_account'
  patch '/client_area/save_account'

  root to: 'home#index'

  #Order Controller

  get 'order/new'
  post 'order/create'
  patch 'order/update'
  get 'order/list'
  get 'order/show/:id', to: 'order#show', as: 'order_show'
  get 'order/edit'
  post 'order/delete'
  post 'order/update'
  #--

  #Profile Controller

  get 'profile/new'
  post 'profile/create'
  patch 'profile/update'
  get 'profile/list'
  get 'profile/show/:id', to: 'profile#show', as: 'profile_show'
  get 'profile/edit'
  post 'profile/delete'
  post 'profile/update'
  #--

  get '/Missao', to:'home#missao', as:'missao'
  get '/Index', to:'home#index', as:'index'
  get '/QuemSomos', to:'home#quemsomos', as:'quemsomos'
  get '/Contactos', to:'home#contactos', as:'contactos'
  get '/Encomendas', to:'client_area#encomendas', as:'encomendas'
  get '/Perfil', to:'profile#edit', as:'perfil'
  get '/Inicio', to:'client_area#inicio', as:'inicio'
  get '/Criar', to:'order#new', as:'criar'
  get '/ListarEncomendas', to:'order#list', as:'listar'
end
