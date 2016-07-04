Rails.application.routes.draw do
  #get 'admin/index'

  #get 'sessions/new'
  root 'admin#index'
  get 'sessions/create'

  get 'sessions/destroy'

  resources :users
  get 'say/hello'

  get 'say/goodbye'
  get 'admin' => 'admin#index'
  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
