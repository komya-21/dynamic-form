Rails.application.routes.draw do
  devise_for :users
	 root to: "data_entries#index"
  resources :data_entries do
  	collection do 
  		get :index1
  		end
  	end
  resources :forms
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
