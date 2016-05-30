Rails.application.routes.draw do
  get 'users/new'

root 'static_pages#home'
get 'help' => 'static_pages#help'
get 'about' => 'static_pages#about'
get 'contact' => 'static_pages#contact'
get 'Resume' => 'static_pages#resume'
get 'signup' => 'users#new'
end