Rails.application.routes.draw do
  # get 'students/new'

  # get 'students/create'

  # get 'students/update'

  # get 'students/edit'

  # get 'students/destroy'

  # get 'students/index'

  # get 'students/show'

  # get 'school_classes/new'

  # get 'school_classes/create'

  # get 'school_classes/update'

  # get 'school_classes/edit'

  # get 'school_classes/destroy'

  # get 'school_classes/index'

  # get 'school_classes/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :students, :school_classes
end
