Rails.application.routes.draw do

  # really? had to throw this curveball in here. %i converts arguments inside brackets to non-interpotaled Array of symbols separated by whitespace. Translation for Rails noobs only: [:index,:show,:new,:create,:edit,:update]



  # get 'posts/:id/edit', to: 'posts#edit', as: :edit_post
  # patch 'posts/:id', to: 'posts#update'

  # can be replaced with the following resources route declaration

  resources :posts, only: %i[index show new create edit update]


  #   Prefix Verb  URI Pattern               Controller#Action
  #   posts GET   /posts(.:format)          posts#index
  #         POST  /posts(.:format)          posts#create
  # new_post GET   /posts/new(.:format)      posts#new
  # edit_post GET   /posts/:id/edit(.:format) posts#edit
  #   post GET   /posts/:id(.:format)      posts#show
  #         PATCH /posts/:id(.:format)      posts#update
  #         PUT   /posts/:id(.:format)      posts#update
  
end
