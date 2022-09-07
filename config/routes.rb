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

  namespace :notification, notification_scope: true do
    post "/sendPush" => "content#sendPush", :as => :sendPush
  end
  
  post "/notifications" => "notifications#create", :as => :create

  Sidekiq::Web.use Rack::Auth::Basic do |username, password|
    ActiveSupport::SecurityUtils.secure_compare(::Digest::SHA256.hexdigest(username), ::Digest::SHA256.hexdigest(ENV["SIDEKIQ_USERNAME"])) &
      ActiveSupport::SecurityUtils.secure_compare(::Digest::SHA256.hexdigest(password), ::Digest::SHA256.hexdigest(ENV["SIDEKIQ_PASSWORD"]))
  end
  mount Sidekiq::Web, at: "/sidekiq"
end
