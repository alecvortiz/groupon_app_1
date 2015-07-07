class User::RegistrationsController < Devise::RegistrationsController
	# before_filter :authenticate_user!, :except => [:require_no_authentication]
 	# skip_before_filter :require_no_authentication
   

  	def check_permissions
    	authorize! :create, resource
  	end

  
    

	private
  	
  	def sign_up_params
    	params.require(:user).permit(:first_name, :last_name, :job_title, :email, :password, :password_confirmation)
  	end

  	def account_update_params
    	params.require(:user).permit(:first_name, :last_name, :job_title, :email, :password, :password_confirmation, :current_password)
 	end

end
