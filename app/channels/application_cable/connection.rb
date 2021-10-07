module ApplicationCable
  class Connection < ActionCable::Connection::Base
    identified_by :current_user

    def connect
      self.current_user = env["warden"].user
      puts "\n\n\n ApplicationCable::Connection self.current_user: #{self.current_user.inspect}"
      puts " ApplicationCable::Connection current_user: #{current_user.inspect}\n\n\n"
    end
  end
end
