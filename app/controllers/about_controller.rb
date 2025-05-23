class AboutController < ApplicationController
  def static
  end

  def show
  end

  def new
  end
end
# app/controllers/static_controller.rb
class StaticController < ApplicationController
  def about
    # This action will render app/views/static/about.html.erb by default
  end
end
