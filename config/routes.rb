Portfolio::Application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'

  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  get '/portfolio', :to => "portfolio#index", as: :portfolio
  get '/blog(/category/:category_id)', :to => "posts#index", as: :blog
  match '/blog/:category/:slug', :to => "posts#show", as: :show_post
  root :to => 'portfolio#index'
  match ':controller(/:action(/:id))(.:format)'
end
