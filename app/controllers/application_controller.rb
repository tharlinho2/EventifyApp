class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  layout :layout_by_resource

  private

  def layout_by_resource
    "authentication" if devise_controller?
  end
end
