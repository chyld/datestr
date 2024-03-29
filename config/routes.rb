Datestr::Application.routes.draw do

  get '/about' => 'home#about'
  get '/faq' => 'home#faq'
  get '/register' => 'register#new'
  post '/register' => 'register#create'

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/logout' => 'session#destroy'

  get '/profile/edit' => 'users#edit'
  get '/profile' => 'users#show'
  put '/profile' => 'users#update'
  get '/profile/:id' => 'users#show', :as => 'userprofile'

  post '/photos/primary' => 'photos#primary'
  get '/photos/new' => 'photos#new'
  get '/photos' => 'photos#index'
  post '/photos' => 'photos#create'
  get '/photos/:id' => 'photos#show', :as => 'photo'

  resources :questions

  get '/search' => 'search#results'

  get '/messages' => 'messages#index'
  get '/messages/:id/new' => 'messages#new', :as => 'new_message'
  post '/messages' => 'messages#create'
  get '/messages/:id' => 'messages#show', :as => 'message'
  post '/messages/answer' => 'messages#answer'

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  root :to => 'home#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
