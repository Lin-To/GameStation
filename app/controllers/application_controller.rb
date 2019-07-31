class ApplicationController < ActionController::Base
  skip_before_action :authenticate_user!
end
