require "sidekiq-scheduler"

class ExempleJob
  include Sidekiq::Worker
  include ApplicationHelper
  queue_as :mailers

  def perform
    Reminder.all.each do |reminder|
      if reminder.reminder_at.strftime("%Y-%d-%m %H:%M") == Time.zone.now.strftime("%Y-%d-%m %H:%M")
      end
    end
  end
end
