Rails.application.routes.draw do
  root to: 'top#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get   '/register', to: 'member#register'
  post  '/register', to: 'member#register'
  get   'summon', to: 'summon#index'
  get   'chat', to: 'chat#index'
  mount ActionCable.server => '/cable'
end
