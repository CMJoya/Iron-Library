Rails.application.routes.draw do

  root 'home#index'
  get 'books'=> 'books#index', as: :books
  get 'books/new' => 'books#new', as: :new_book
  get 'books/:id' => 'books#show', as: :book
  post 'books' => 'books#create'
  get 'books/:id/edit' => 'books#edit', as: :edit_book
  patch 'books/:id' => 'books#update'
  delete 'books/:id' => 'books#delete'

  get 'authors' => 'authors#index', as: :authors
  get 'authors/new' => 'authors#new', as: :new_author
  get 'authors/:id' => 'authors#show', as: :author
  get 'authors/:id/edit' => 'authors#edit', as: :edit_author
  post 'authors' => 'authors#create'
  delete 'authors/:id' => 'authors#delete'

  get 'orders' => 'orders#index', as: :orders
  get 'orders/:id' => 'orders#show', as: :order

  post 'cart' => 'carts#add_to_cart', as: :add_to_cart
  get 'cart' => 'carts#view', as: :cart

  get 'log_in' => 'sessions#new', as: :log_in
  post 'log_in' => 'sessions#create'
  delete 'log_out' => 'sessions#delete', as: :log_out

  get '/users/new' => 'users#new', as: :sign_up
  post '/users' => 'users#create', as: :users

  delete 'cart' => 'carts#remove_from_cart', as: :remove_from_cart

  get 'checkout' => 'checkout#start', as: :checkout
  post 'checkout' => 'checkout#process_payment', as: :process_payment

  get 'receipts/:id' => 'checkout#receipt', as: :receipt





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
