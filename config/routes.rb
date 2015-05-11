Rails.application.routes.draw do
  
  get 'macro/index'

  resources :users
  resources :sessions

  
  get 'credit' => 'home#credit'
    
  root 'home#index'
  
  #routes for user login
  get 'about' => "home#about"
  get 'signup', to: 'users#new', as: :signup
  get 'login', to: 'sessions#new', as: :login
  get 'logout', to: 'sessions#destroy', as: :logout

  # Routes for guides
  get 'guides' => 'home#guide'
  get 'guides' => 'guides#index'
  get 'new', to: 'guides#new', as: :nguide
  get 'edit', to: 'guides#edit', as: :eguide
  delete 'guides/:id' => 'guides#destroy' , as: :dguides
  
  #routes for macros
  get 'macros' => 'home#macro'
  get 'macros' => 'home#index'
  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'
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
