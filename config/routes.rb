Winorder::Application.routes.draw do
  resources :push_events do
    collection do 
      post "pipedrive_endpoint"
    end
  end
  resources :projects do
    collection do
      post "pipedrive_endpoint"
    end
    member do 
      get "load_data"
    end
  end
  root "push_events#index"
  get "home", to: "pages#home", as: "home"
  get "inside", to: "pages#inside", as: "inside"
  get "/contact", to: "pages#contact", as: "contact"
  post "/emailconfirmation", to: "pages#email", as: "email_confirmation"

  get "posts", to: "pages#posts", as: "posts"
  get "posts/:id", to: "pages#show_post", as: "post"
  devise_for :users

  namespace :admin do
    root "base#index"
    resources :users
    get "posts/drafts", to: "posts#drafts", as: "posts_drafts"
    get "posts/dashboard", to: "posts#dashboard", as: "posts_dashboard"
    resources :posts
  end

end
