class UserMailer < ApplicationMailer
  def welcome(user_id)
    user = User.find(user_id)
    @email = user.email
    mail(to: @email, subject: "Bem vindo!")
  end

  def reminder(reminder)
    @user = User.find(reminder.user_id)
    @event = Event.find(reminder.event_id)

    mail(to: @user.email, subject: "Lembrete")
  end
end
