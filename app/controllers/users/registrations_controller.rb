class Users::RegistrationsController < Devise::RegistrationsController

  # POST /resource
  def create
    super do |resource|
      flash.now[:alert] = resource.errors.full_messages
    end
  end
end
