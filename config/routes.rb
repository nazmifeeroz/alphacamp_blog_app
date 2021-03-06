Rails.application.routes.draw do
	root to: 'pages#home'

	get 'about', to: 'pages#about'
	get 'service', to: 'pages#service'
	get 'destroy', to: 'pages#destroy'

	resources :posts do
		resources :comments, only: [:create]
	end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
