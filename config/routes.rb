Rails.application.routes.draw do
  devise_for :users
  resources :eventos do
    resources :imagens do
      resources :comentarios, only: [:create, :destroy, :update]
    end
  end
  root to: 'eventos#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
