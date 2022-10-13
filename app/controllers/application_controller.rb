class ApplicationController < ActionController::Base
  alias current_user current_admin
end
