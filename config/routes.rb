Barweb::Application.routes.draw do


  devise_for :admin_users, ActiveAdmin::Devise.config


  #PÁGINAS PARA TODOS OS BARES
  get "/" => "principal#index", :as => :principal

  get "/contact" => "principal#contact", :as => :principal_contact

  get "/gallery" => "principal#gallery", :as => :principal_gallery

  get "/events" => "principal#events", :as => :principal_events

  get "/uberlandia/:name" => "home_bar#index", :as => :homebar

  root :to =>  "principal#index"



  #PÁGINAS PAGAS - PARA ESTABELECIMENTOS QUE QUISEREM PAGAR PELO SERVIÇO


  #OBS: SE SÓ A GENTE FOR MEXER NO ADMIN, NÃO PRECISA DE SUPER ADMIN PARA SEPARAR ISSO, CASO CONTRÁRIO, PRECISA!

  # TODO: PEGAR TXT DINAMICAMENTE DE ALGUM JEITO PRA PODER CRIAR SÓ UM ARQUIVO
  # DEVE DAR PRA USAR O MESMO PELO MENOS ENTRE AS HOMES
  get "/uberlandia/:name/contact" => "home_bar#contact", :as => :homebar_contac

  get "/uberlandia/:name/gallery" => "home_bar#gallery", :as => :homebar_gallery

  get "/uberlandia/:name/events" => "home_bar#events", :as => :homebar_events




  ActiveAdmin.routes(self)

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