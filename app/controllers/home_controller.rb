class HomeController < ApplicationController
  skip_before_action :require_authentication

  def index
    @jobs = Job.last(5)
  end
end
