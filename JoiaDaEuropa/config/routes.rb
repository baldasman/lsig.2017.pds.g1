Rails.application.routes.draw do

  get 'attachment/index'

  get 'attachment/new'

  get 'attachment/create'

  get 'attachment/destroy'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/profile/index'

  root to: 'home#index'
end

# Route para o bd, verificar!!
# https://www.tutorialspoint.com/ruby-on-rails/rails-file-uploading.htm
# CarrierWaveExample::Application.routes.draw do
# resources :attachments, only: [:index, :new, :create, :destroy]
# root "attachments#index"
# end
