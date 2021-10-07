class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :show_current_user

  def show_current_user
    puts "\n\n\n ApplicationController current_user: #{current_user.inspect}\n\n\n"
  end
end
