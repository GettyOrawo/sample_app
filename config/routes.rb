Rails.application.routes.draw do
<<<<<<< HEAD
get 'static_pages/home'

get 'static_pages/help'
get 'static_pages/about'
# get 'static_pages/home'
end
=======

  root 'static_pages#home'

  get 'static_pages/help'

  get 'static_pages/about'

  get 'static_pages/contact'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
#root 'application#hello'
end
>>>>>>> static-pages
