Rails.application.routes.draw do

  get 'feeds/scholarships'

  root 'static_pages#home'

  get 'about' => 'static_pages#about'

  get 'contact' => 'static_pages#team'
  
  get 'news' => 'static_pages#news'

  get 'signup' => 'users#new'

  get 'login' => 'sessions#new'
  
  get 'reset' => 'password_resets#new'
  
  get 'scholarships' => 'feeds#scholarships'
  
  get 'student_profiles' => 'feeds#student_profiles'
  
  get 'summer_programs' => 'feeds#summer_programs'
  
  get 'tips_and_tricks' => 'feeds#tips_and_tricks'
  
  get 'tags' => 'users#tags'
  
  get 'content' => 'static_pages#content_internship'
  
  get 'team' => 'static_pages#team'
  
  get 'contact' => 'static_pages#contact'

  post 'login' => 'sessions#create'

  delete 'logout' => 'sessions#destroy' 

  resources :users do 
    member do
      get :basic_info, :tags
      #basic_info_user_path or basic_info_user_url
      #tags_user_path or tags_user_url
      patch :update_tags
    end
  end 

  resources :account_activations, only: [:edit]

  resources :password_resets,     only: [:new, :edit, :create, :update]





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
