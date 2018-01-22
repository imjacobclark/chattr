Rails.application.routes.draw do
  get 'profile/index'

  get 'profile/user'

  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register', edit: 'settings' }

  root to: "home#index"
  
  get 'home/index'
  get 'dashboard/index'

  # Vanity
  get '/dashboard', to: 'dashboard#index'

  # Routing Params
  get '/profile/:id' => 'profile#user'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
