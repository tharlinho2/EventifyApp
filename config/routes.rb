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

  def draw(routes_name)
    instance_eval(File.read(Rails.root.join("config/routes/#{routes_name}.rb")))
  end

  draw :sidekiq
end
