Rails.application.routes.draw do
  # get 'stories/index'
  #
  # get 'stories/new'

   resources :stories
   root 'stories#index'

  
end
