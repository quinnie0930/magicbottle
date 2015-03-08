Rails.application.routes.draw do
   namespace :api do
    resources :patients, only: [:create]
    resources :feedbacks, only: [:create, :index]
    resources :pills, only: [:index] do
      collection do
        get :pill_just_was_taken
        get :take_pill
      end
    end
   end
end
