module ApplicationHelper
end
# app/helpers/application_helper.rb

module ApplicationHelper
  def time_based_greeting
    current_hour = Time.current.hour # Gets the current hour (0-23)

    if current_hour >= 5 && current_hour < 12
      "Good morning!" # 5 AM to 11:59 AM
    elsif current_hour >= 12 && current_hour < 17
      "Good afternoon!" # 12 PM to 4:59 PM
    elsif current_hour >= 17 && current_hour < 21
      "Good evening!" # 5 PM to 8:59 PM
    else # 9 PM to 4:59 AM
      "Good night!"
    end
  end
end

