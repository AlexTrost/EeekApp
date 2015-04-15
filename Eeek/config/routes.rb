Rails.application.routes.draw do
  # devise_for :users

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  # devise_for :users, path: "", controllers: { sessions: "login", registrations: "login" }, :skip =>     [:sessions, :registrations], :path_names => { :sign_up => "/", :sign_in => "/" }
  # devise_for :users, path: "", controllers: { sessions: "users", registrations: "users" }, path_names: { sign_in: '/', password: '/', confirmation: '/', unlock: '/', sign_up: '/', sign_out: '/'}
 
 


  root 'login#index'

  resources :users, only: [:create, :destroy, :update]
  resources :feed
  resources :dashboard, only: [:index]
  resources :home, only: [:index]
  resources :mood, only: [:create]

  resources :uploads, only: [:new, :create, :destroy]
  
  resources :contacts, only: [:create, :new, :destroy, :update, :index]




  post 'users/login' => "users#login"
  get 'uploads/trigger' => "uploads#trigger"


  # GoogleAuthExample::Application.routes.draw do
  #   get 'auth/:provider/callback', to: 'sessions#create'
  #   get 'auth/failure', to: redirect('/')
  #   get 'signout', to: 'sessions#destroy', as: 'signout'

  #   resources :sessions, only: [:create, :destroy]
  #   resource :home, only: [:show]

  #   root to: "home#show"
  # end

  get '*path' => redirect('/')

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
