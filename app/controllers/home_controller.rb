class HomeController < ApplicationController
  def index
  end

  def about
  end

  def projects
    @repos = Projects.new.get_response
  end
end
