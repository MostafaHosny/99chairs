Rails.application.routes.draw do

	root 'users#index'
	namespace :api do 
   	post 'files/prossecing'
 	end
 	
	resources :users , only: [:index] do
  	collection { post :import }
	end
end
