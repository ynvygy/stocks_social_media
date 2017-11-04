Rails.application.routes.draw do
  	devise_for :users, :controllers => { :registrations => "user/registrations"}
    resources :user_stocks, except: [:edit,:show,:update]
  	resources :users, only: [:show]
  	resources :friendships
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	root to: 'welcome#home'
	get 'my_portfolio', to: "users#my_portfolio"
	get 'search_stocks', to: "stocks#search"
	get 'my_friends', to: "users#my_friends"
end
