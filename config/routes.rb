Rails.application.routes.draw do
	root to: 'posts#index'

	get 'about', to: 'pages#about'
	get 'service', to: 'pages#service'
	get 'destroy', to: 'pages#destroy'

	resources :posts, only: [:index, :show, :new, :create, :edit, :update, :destroy]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
