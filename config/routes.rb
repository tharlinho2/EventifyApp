Rails.application.routes.draw do
  root "events#index"

  devise_for :users,
             only: %i[ sessions registrations passwords ],
             controllers: {
               registrations: "users/registrations",
               passwords: "users/passwords",
               confirmations: "users/confirmations",
             }

  resources :events
end
