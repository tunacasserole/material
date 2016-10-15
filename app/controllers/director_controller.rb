class DirectorController < ApplicationController

  before_action :evaluate_direction, only: :index

  def index
  end

  private

  # This specialized handler is designed to determine the landing page for
  # a regular user or tenant admin. The root_path points here. If the current user
  # is a tenant administrator then the user will be directed to the tenant admin dashboard.
  # If the current user is a regular user then he/she will be directed to user dashboard.
  def evaluate_direction
    # redirect_to (current_user.is_admin? ? dashboard_path : plans_path)
    redirect_to dashboard_path
  end # def evaluate_direction

end # class DirectorController
