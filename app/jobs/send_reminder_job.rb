require "sidekiq-scheduler"

class SendReminderJob < ApplicationJob
  queue_as :default

  def perform(reminder)
    # UserMailer.reminder(reminder).deliver_now

    reminder.user.notifications.each do |n|
      Webpush.payload_send(endpoint: n.endpoint,
        message: JSON.generate({ 
          title: "Teste",
          body: "Teste"
          }),
        p256dh: n.p256dh_key,
        auth: n.auth_key,
        ttl: 24 * 60 * 60,
        urgency: 'normal',
        vapid: {
          subject: 'mailto:admin@commercialview.com.au',
          public_key: "BACfNWl1UqWyyRHIw7wRbm0ZHyVYing85sBOVMzmy5rDIsp-OipzJ7iHG3TtU8-_n9bS2k2WezFmt9vAtC0x9Bo=",
          private_key: "KIYVQ1X-WbI9ICPuNudM4L5vPX16wd1UrL6a7WHOnus="
        })
    end
  end
end
