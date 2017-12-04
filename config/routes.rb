Rails.application.routes.draw do
	get '/', to: 'ricks#index'
	get '/ricks', to: 'ricks#index'
	get '/ricks/new', to: 'ricks#new'
	get '/ricks/:id', to: 'ricks#show'
	get '/ricks/:order', to: 'ricks#index'
	get '/about', to: 'pages#about'
	post '/ricks', to: 'ricks#create'
	post '/ricks/:search', to: 'ricks#search'
	get '/ricks/:id/edit', to: 'ricks#edit'
	patch '/ricks/:id', to: 'ricks#update'
	delete '/ricks/:id', to: 'ricks#destroy'

end
