Rails.application.routes.draw do
  resources :lists do
    resources :subtasks
    resources :notes
    resources :due_dates
  end

  root 'master_lists#index' 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
