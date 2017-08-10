Rails.application.routes.draw do
  get 'enrollments/new'

  get 'coordinators/index'

  get 'participants/index'

  get 'home/index'

  resources :coordinators
  resources :participants

  resources :registries do
    resources :enrollments
  end
 
  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
