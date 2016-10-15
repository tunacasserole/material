class DashboardController < TenantedController
  # before_action :redirect_if_no_survey, only: :index

  def index
    # @users = User.where tenant: Tenant.current
  end # def index

  private


end # class DashboardController
