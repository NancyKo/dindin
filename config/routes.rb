Rails.application.routes.draw do
  devise_for :user, controllers: { registrations: "users/registrations" } 
  authenticated :user do 
    resources :venues
  end

  root to: 'welcome#index'

end

  