# frozen_string_literal: true

class ThingReflex < ApplicationReflex
  def doit
    puts "\n\n\n ThingReflex current_user: #{current_user.inspect}\n\n\n"
    morph "#container", render(partial: "home/nothing")
  end
end
