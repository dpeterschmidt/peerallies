Peeralliesapp::Application.routes.draw do
  # get "urls/new"

  resources :peer_allies
  root to: 'peer_allies#index'

  match :index, :to => 'peer_allies#index'
  match :ally_list, :to => 'peer_allies#ally_list'
  match :contact, :to => 'peer_allies#contact'

  match :calendar, :to => 'peer_allies#calendar'

  match :crisis_info, :to => 'peer_allies#crisis_info'

  match :option, :to => 'peer_allies#option'

  match :ally, :to => 'peer_allies#ally'

  match :information, :to => 'peer_allies#information'

  match :about, :to => 'peer_allies#about'

  match :conf_yes, :to => 'peer_allies#conf_yes'

  match :survey, :to => 'peer_allies#survey'
  

  post "/peer_allies/new" => 'peer_allies#create'


  # routing for authentication
get 'auth/:provider/callback' => 'sessions#create'
match 'logout' => 'sessions#destroy'
get 'auth/failure' => 'sessions#failure'

# for testing - DELETE THIS FOR PRODUCTION
match 'test_login' => 'sessions#test_login' 

  # match :ally_list, :to => redirect('ally_list')

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
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
