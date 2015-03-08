Rails.application.routes.draw do
   namespace :api do
    resources :patients, only: [:create]
    resources :feedbacks, only: [:create, :index]

    resources :pills, only: [:index]
   end
end
