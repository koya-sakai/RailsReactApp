Rails.application.routes.draw do
  root 'data#index'
  get 'data/index'
  get 'data/ajax'
  get 'hello/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
