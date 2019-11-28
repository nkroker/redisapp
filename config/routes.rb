Rails.application.routes.draw do

	resources :letters, only: [:index] do
	  member do
	  	patch :upvote #/letters/4/upvote
	  	patch :downvote #/letters/4/downvote
	  end
	end
  

  root 'letters#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
