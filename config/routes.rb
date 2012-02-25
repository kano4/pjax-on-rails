PjaxOnRails::Application.routes.draw do
  resources :posts

  get '/about', :to => "pages#about"
  root :to => 'pages#index'
end
