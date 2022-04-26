class UserMailer < ApplicationMailer
  def welcome_email
    @name = "Tharles"
    @site = "exemple.com"
    mail to: "User@gmail.com", subject: "Bem vindo!"
  end

  def niver
  end
end
