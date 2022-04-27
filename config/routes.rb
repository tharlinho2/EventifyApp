require "sidekiq/web"

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
  resources :reminders, only: %i[ create destroy ]

  authenticate :user, ->(user) { user.admin? } do
    mount Sidekiq::Web => "/sidekiq"
  end
end
