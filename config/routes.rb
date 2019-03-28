Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'dor#home'
  post '/fabd37054293f6b072f4ed28ed1a6b3d4eb1bd7b46a4aaf9d7dd43f8bb3a117f', to: 'dor#caller'
end
