Rails.application.routes.draw do
  root 'static_pages#home'
  get 'static_pages/home'
  # static_pages_home_url getを記述することでヘルパーが生成される
  get 'static_pages/help'
  get 'static_pages/about'
  get 'static_pages/contact'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
