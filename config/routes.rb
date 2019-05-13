Rails.application.routes.draw do
  resources :active_class_lists
  resources :active_classes
  resources :students

  root 'students#index'
  post '/:student_id/:active_class_id/active_class_lists' => 'active_class_lists#act_create', as: 'create_act_class'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
