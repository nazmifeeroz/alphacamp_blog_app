Rails.application.routes.draw do
	root to: 'pages#home'

	get 'about', to: 'pages#about'
	get 'service', to: 'pages#service'
	get 'destroy', to: 'pages#destroy'

	resources :posts, only: [:index, :show, :new, :create, :edit, :update]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
