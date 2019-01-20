Rails.application.routes.draw do
  resources :wikis
  get 'help',		 to: 'static_pages#help'
  get 'contact', to: 'static_pages#contact'
  get 'about',	 to: 'static_pages#about'
  root to: 'static_pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
