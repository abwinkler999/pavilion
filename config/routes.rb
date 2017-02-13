Rails.application.routes.draw do
  devise_for :users
  #root 'static_pages#splash'
  root 'static_pages#home'
  get 'admin', to:'static_pages#admin', as: :admin
  get 'teacher', to:'static_pages#teacher', as: :teacher
  get 'csv_girls', to:'static_pages#csv_girls', as: :csv_girls
  get 'csv_adults', to:'static_pages#csv_adults', as: :csv_adults
  get 'csv_sessions', to:'static_pages#csv_sessions', as: :csv_sessions
  get 'csv_medications', to:'static_pages#csv_medications', as: :csv_medications
  get 'csv_dietary', to:'static_pages#csv_dietary', as: :csv_dietary
  get 'csv_gluten', to:'static_pages#csv_gluten', as: :csv_gluten
  get 'csv_release', to:'static_pages#csv_release', as: :csv_release
  get 'csv_units', to:'static_pages#csv_units', as: :csv_units
  get 'csv_troops', to:'static_pages#csv_troops', as: :csv_troops
  #get 'static_pages/csv'
  get 'home', to:'static_pages#home', as: :home
  #get 'static_pages/home'
  #get 'special', to:'static_pages#special', as: :special
  #get 'static_pages/admin'

  get '404', :to => 'static_pages#home'

  resources :girls
  resources :adults


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
