class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session
  $vapid_private =  "TBD5gqg82wiYndGd6byWUWyxuxmvBavN8vIx9noWhvI="  
  $vapid_public = "BPO6KtLoo8AvG5aLXrdmjVyYxBisgdH-b_lCvhectlK81YsNKzfUU46oVmGhJAk822tDAvXBS79JlX0ZUeWKOPk="

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
