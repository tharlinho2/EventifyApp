require "sidekiq-scheduler"

class SendReminderJob < ApplicationJob
  queue_as :default

  def perform(reminder)
    # UserMailer.reminder(reminder).deliver_now

    reminder.user.notifications.each do |n|
      txt = "#{reminder.event.title} \n \n#{reminder.event.description}"

      Webpush.payload_send(endpoint: n.endpoint,
        message: JSON.generate({ 
          title: "Lembrete 🔔",
          body: txt
          }),
        p256dh: n.p256dh_key,
        auth: n.auth_key,
        vapid: {
          subject: 'mailto:admin@commercialview.com.au',
          public_key: ENV['VAPID_PUBLIC_KEY'],
          private_key: ENV['VAPID_PRIVATE_KEY']
        })
    end
  end
end
