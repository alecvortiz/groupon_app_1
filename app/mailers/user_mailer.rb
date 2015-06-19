require 'digest/sha2'
class UserMailer < ApplicationMailer

	default "Message-ID"=>"#{Digest::SHA2.hexdigest(Time.now.to_i.to_s)}@gmail.com"


	def email(user, arr)
   		@user = user
   		@bus_intel_arr = arr[0]
   		@ct_sales_arr = arr[1] 
   		@CEO_arr = arr[2] 
   		@city_planner_arr = arr[3] 
   		@cs_arr = arr[4] 
   		@durban_sales_arr = arr[5] 
   		@editorial_arr = arr[6] 
   		@finance_arr = arr[7]
   		@goods_administrator_arr = arr[8] 
   		@johannesburg_sales_arr = arr[9] 
   		@logistics_arr = arr[10] 
   		@pretoria_sales_arr = arr[11] 
   		@PRM_arr = arr[12]
   		@QA_arr = arr[13] 
   		@strategic_accounts_arr = arr[14] 
   		@telesales_arr = arr[15] 
   		@travel_arr = arr[16]
   		@product_designer_arr = arr[17]
   		
	    


    	@url_salesperson_peer ='https://docs.google.com/forms/d/1jZSvb3UFvUuM-BQf2AJJfmsG60Y1LzOkmb8EyXBNYl0/viewform'
		@url_salesperson_subordinate = 'https://docs.google.com/forms/d/1_lzr-j7bmq7pSSTFsbKizJdWllCD-v_HZ4v5ldDbbIg/viewform'
		@url_salesperson_supervisor = 'https://docs.google.com/forms/d/16hi-amDALRlL9VVYT51rofjQU7svggwWtSHbkISeZ1E/viewform'

		mail(to: @user.email, 
				subject: 'Performance Appraisal', 
				template_path: 'user_mailer',
				template_name: 'welcome_email')


  	end



end
