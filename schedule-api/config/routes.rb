Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :appointments
  resources :schedules
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/schedules', to: 'schedules#index'
  get '/schedules/:id', to: 'schedules#show'
  post '/schedules', to: 'schedules#create'
  delete '/schedules/:id', to: 'schedules#destroy'

  post '/schedules/:id/appointments', to: 'appointments#create'
  delete '/schedules/:id/appointments/:id', to: 'appointments#destroy'

end
