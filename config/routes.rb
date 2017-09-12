Rails.application.routes.draw do
  get 'due_dates/create'

  get 'due_dates/update'

  get 'due_dates/destroy'

  get 'due_dates/show'

  get 'notes/create'

  get 'notes/update'

  get 'notes/destroy'

  get 'notes/show'

  get 'subtasks/create'

  get 'subtasks/update'

  get 'subtasks/destroy'

  get 'subtasks/show'

  get 'items/index'

  get 'items/show'

  get 'items/create'

  get 'items/update'

  get 'items/destroy'

  get 'lists/index'

  get 'lists/create'

  get 'lists/show'

  get 'lists/update'

  get 'lists/destroy'

  get 'master_lists/index'

  get 'master_lists/create'

  get 'master_lists/update'

  get 'master_lists/destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
