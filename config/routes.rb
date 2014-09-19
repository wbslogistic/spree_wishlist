Spree::Core::Engine.add_routes do
  resources :wishlists
  resources :wished_products, only: [:create, :update, :destroy]
  get '/wishlist' => "wishlists#default", as: "default_wishlist"
  get '/destroy_all' => "wished_products#destroy_all", as: "destroy_all"
end
