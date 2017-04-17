Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get   'member', to: 'member#index'
  get   'member/register', to: 'member#register'
  post  'member/register', to: 'member#register'
end
