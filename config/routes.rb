Rails.application.routes.draw do
    root to: 'cocktails#index'
#
  # root to: 'cocktails'
    resources :cocktails, only: [ :index, :show, :new, :create] do
      resources :doses, only: [ :new, :create, :destroy]
  end

    resources :doses, only: [:destroy]# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

