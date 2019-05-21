Rails.application.routes.draw do
  
  get '/', to: 'application#index'

  resources :students, except: :destroy
  resources :school_classes, except: :destroy

end