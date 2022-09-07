require "sidekiq-scheduler"

class NotifcationPushJob < ApplicationJob
  queue_as :webpush

  def perform
    Reminder.all.each do |reminder|
      if reminder.reminder_at.strftime("%Y-%d-%m %H:%M") == Time.zone.now.strftime("%Y-%d-%m %H:%M")
        SendReminderJob.perform_later(reminder)
      end
    end
  end
end