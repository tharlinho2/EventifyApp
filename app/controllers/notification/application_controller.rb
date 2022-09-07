class Notification::ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session
  $vapid_private =  "TBD5gqg82wiYndGd6byWUWyxuxmvBavN8vIx9noWhvI="  
  $vapid_public = "BPO6KtLoo8AvG5aLXrdmjVyYxBisgdH-b_lCvhectlK81YsNKzfUU46oVmGhJAk822tDAvXBS79JlX0ZUeWKOPk="
end
