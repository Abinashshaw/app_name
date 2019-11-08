Rails.application.routes.draw do
  get 'results/my_results' 




  get 'home/index'

  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
