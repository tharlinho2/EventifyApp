class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  # before_action :authenticate
  skip_before_action :verify_authenticity_token

  layout :layout_by_resource

  private

  # def authenticate
  #   authenticate_or_request_with_http_basic do |username, password|
  #     username == Rails.application.credentials.authentication[:username] &&
  #     password == Rails.application.credentials.authentication[:password]
  #   end
  # end

  def layout_by_resource
    "authentication" if devise_controller?
  end
end
