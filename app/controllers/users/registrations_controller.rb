class Users::RegistrationsController < Devise::RegistrationsController

  # POST /resource
  def create
    super do |resource|
      UserMailer.welcome_email(resource.email).deliver_later
      flash.now[:alert] = resource.errors.full_messages
    end
  end
end
