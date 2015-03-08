Rails.application.routes.draw do
   namespace :api do
    resources :patients, only: [:create]
    resources :feedbacks, only: [:create]
   end
end
