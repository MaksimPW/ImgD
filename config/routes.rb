Rails.application.routes.draw do
  
  #scope ':locale', locale: /#{I18n.available_locales.join("|")}/ do
  # application routes...


scope '/:locale', locale: /#{I18n.available_locales.join('|')}/ do
  devise_for :users
  resources :words 
  #root 'words#index'
  root to: redirect("/#{I18n.default_locale}", status: 302), as: :redirected_root
#devise_scope :user do
#  authenticated :user do
#    root 'words#index', as: :authenticated_root
#  end
#
#  unauthenticated do
#    root 'about#index', as: :unauthenticated_root
#  end
#end

  get 'about' => 'about#index'
  root 'words#index'
  #end
  
end

# Catch all requests without a locale and redirect to the default...
#match '*path', to: redirect("/#{I18n.default_locale}/%{path}"), constraints: lambda { |req| !req.path.starts_with? "/#{I18n.default_locale}/" }
#match '', to: redirect("/#{I18n.default_locale}")

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
