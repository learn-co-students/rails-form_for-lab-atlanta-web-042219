Rails.application.routes.draw do
  resources :school_classes, only: [:create, :new, :edit, :show, :update]
  resources :students, except: [:destroy, :index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
