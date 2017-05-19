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

  scope "(:locale)", :locale => /en|pt/ do

    match 'home' => 'home#index'
    match 'contactos' => 'home#contactos'
    match 'missao' => 'home#missao'
    match 'quemsomos' => 'home#quemsomos'

    match 'new' => 'attachments#new'
    match 'Index' => 'attachments#index'
    match 'show' => 'attachments#show'

    match 'edit_account' => 'client_area#edit_account'
    match 'encomendas' => 'client_area#encomendas'
    match 'index' => 'client_area#index'
    match 'inicio' => 'client_area#inicio'
    match 'perfil' => 'client_area#perfi'
    match 'profile_creation' => 'client_area#Profile_creation'

    match 'edit' => 'order#edit'
    match 'list' => 'order#list'
    match 'new' => 'order#new'
    match 'show' => 'order#show'

    match 'edit' => 'profile#edit'
    match 'index' => 'profile#index'
    match 'list' => 'profile#list'

    match 'equipe/sylvain' => 'equipe#sylvain'
    match 'equipe/benoit' => 'equipe#benoit'
    match 'equipe/stephane' => 'equipe#stephane'
    match 'equipe/suemarie' => 'equipe#suemarie'
    match 'equipe/regis' => 'equipe#regis'
    match 'equipe/fred' => 'equipe#fred'

    match 'equipe/callback' => 'equipe#callback'
    match 'equipe/auth' => 'equipe#auth'
    match 'equipe/ajax_contact' => 'equipe#ajax_contact'

    match 'linkedinauth/callback' => 'linkedinAuth#callback'
    match 'linkedinauth/init_auth' => 'linkedinAuth#init_auth'

    match 'mission' => 'mission#index'
    match 'service' => 'service#index'
    match 'developmen' => 'developmen#index'

    match 'contact' => 'contact#index'

    match 'mandats' => 'mandats#index'
  end

  match '/:locale' => "home#index"

end
