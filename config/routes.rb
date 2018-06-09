Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :weddings do
    member do
      post :archive
      post :unarchive
      post :begin
      post :finish

      get :showcase
    end
  end

  resources :users do
    member do
      post :archive
      post :unarchive
    end
  end
end
