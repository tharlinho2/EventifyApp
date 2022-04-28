require "sidekiq-scheduler"

class SendReminderJob < ApplicationJob
  queue_as :mailers

  def perform(reminder)
    UserMailer.reminder(reminder).deliver_now
  end
end
