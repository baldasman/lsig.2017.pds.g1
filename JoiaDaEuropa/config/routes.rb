Rails.application.routes.draw do

  get 'attachments/index'

  get 'attachments/new'

  get 'attachments/show'

  post '/attachments/new'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/profile/index'
  get '/client_area/index'

  get '/client_area/edit_account'
  patch '/client_area/save_account'

  root to: 'client_area#inicio'

  #Order Controller

  get 'order/new'
  post 'order/create'
  patch 'order/update'
  get 'order/list'
  get 'order/show/:id', to: 'order#show', as: 'order_show'
  get 'order/edit'
  post 'order/delete'
  post 'order/update'
  get '/recreate', to: 'order#recreate', as: 'recreate'
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
  get '/Noticias', to:'home#noticias', as:'noticias'
  get '/Encomendas', to:'client_area#encomendas', as:'encomendas'
  get '/Perfil', to:'profile#edit', as:'perfil'
  get '/Inicio', to:'client_area#inicio', as:'inicio'
  get '/Criar', to:'order#new', as:'criar'
  get '/ListarEncomendas', to:'order#list', as:'listar'

  scope "(:locale)", :locale => /en|pt/ do

        get 'home' => 'home#index'
        get 'contactos' => 'home#contactos'
        get 'missao' => 'home#missao'
        get 'quemsomos' => 'home#quemsomos'

        get 'new' => 'attachments#new'
        get 'Index' => 'attachments#index'
        get 'show' => 'attachments#show'

        get 'edit_account' => 'client_area#edit_account'
        get 'encomendas' => 'client_area#encomendas'
        get 'index' => 'client_area#index'
        get 'inicio' => 'client_area#inicio'
        get 'perfil' => 'client_area#perfi'
        get 'profile_creation' => 'client_area#Profile_creation'

        get 'edit' => 'order#edit'
        get 'list' => 'order#list'
        get 'new' => 'order#new'
        get 'show' => 'order#show'

        get 'edit' => 'profile#edit'
        get 'index' => 'profile#index'
        get 'list' => 'profile#list'

      end

    get '/:locale' => "home#index"

end
