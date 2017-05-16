Rails.application.routes.draw do

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/profile/index'
  get '/client_area/index'

  get '/client_area/edit_account'
  patch '/client_area/save_account'

  root to: 'home#index'

  #Order Controller
  get 'order/list'
  get 'order/new'
  post 'order/create'
  patch 'order/update'
  get 'order/list'
  get 'order/show'
  get 'order/edit'
  get 'order/delete'
  get 'order/update'
  #--

end
