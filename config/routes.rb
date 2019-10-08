Rails.application.routes.draw do
  root "lotteries#new"
  
  get 'lotteries/index'
  get 'lotteries/new'
  post 'lotteries/create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
