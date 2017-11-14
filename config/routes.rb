Rails.application.routes.draw do
	get '/ricks', to: 'ricks#index'
	get '/about', to: 'pages#about'
	get '/ricks/new', to: 'ricks#new'
	post '/ricks', to: 'ricks#create'
	get '/ricks/:id', to: 'ricks#show'
	get 'ricks/:wildcard', to: 'ricks#index'
	get '/ricks/:id/edit', to: 'ricks#edit'
	patch '/ricks/:id', to: 'ricks#update'
	delete '/ricks/:id', to: 'ricks#destroy'

end
