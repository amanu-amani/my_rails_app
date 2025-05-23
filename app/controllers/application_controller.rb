# app/controllers/application_controller.rb

class ApplicationController < ActionController::Base
  before_action :track_visit

  private

  def track_visit
    session[:visit_count] ||= 0
    session[:visit_count] += 1
    session[:last_visited] = Time.current
  end # This 'end' closes the 'def track_visit' method

end # This 'end' closes the 'class ApplicationController'
# app/controllers/application_controller.rb

class ApplicationController < ActionController::Base
  before_action :track_visit
  before_action :track_page_visit # <--- Add this line

  private

  def track_visit
    session[:visit_count] ||= 0
    session[:visit_count] += 1
    session[:last_visited] = Time.current
  end

  # --- Add this new method ---
  def track_page_visit
    # Create a unique session key for each page based on its path
    # .parameterize and .underscore make the path suitable for a session key
    page_key = "visits_#{request.path.parameterize.underscore}"
    session[page_key] ||= 0
    session[page_key] += 1
  end
  # --- End of new method ---

end