class TenantedController < ApplicationController

  # before_action :check_user_active

  # include TenantFeatures
  # include ResourceFeatures

	def check_user_active
   	# redirect_to '/users/login', notice: 'User has been deactivated.' if current_user && current_user.state == 'deactivated'
		# authenticate_user!
	end

end # class TenantedController
