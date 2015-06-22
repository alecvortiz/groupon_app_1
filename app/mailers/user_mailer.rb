require 'digest/sha2'
class UserMailer < ApplicationMailer
	

	default "Message-ID"=>"#{Digest::SHA2.hexdigest(Time.now.to_i.to_s)}@gmail.com"
   helper UsersHelper

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
         @cs_tl_arr = arr[18]
         @goods_sales_arr = arr[19]
         @logistics_manager_arr = arr[20]
   		
	  


    	@url_busintel_peer
      @url_ct_sales_supervisor
      @url_ct_sales_peer 
      @url_ct_sales_manager_subordinate
      @url_manager_supervisor
      @url_city_planner_peer
      @url_city_planner_manager_subordinate
      @url_CS_peer
      @url_CS_team_leader_subordinate
      @url_CS_supervisor
      @url_CS_team_leader_peer
      @url_CS_supervisor
      @url_durban_city_manager_subordinate
      @url_durban_sales_peer
      @url_durban_sales_supervisor
      @url_editorial_manager_subordinate
      @url_editorial_supervisor
      @url_finance_peer
      @url_goods_admin_peer
      @url_goods_manager_subordinate
      @url_goods_admin_supervisor
      @url_goods_sales_supervisor 
      @url_goods_sales_peer
      @url_goods_manager_subordinate
      @url_johannesburg_sales_peer
      @url_logistics_peer 
      @url_logistics_manager_subordinate
      @url_logistics_supervisor
      @url_logistics_manager_peer
      @url_pretoria_sales_peer
      @url_pretoria_sales_manager_subordinate
      @url_pretoria_sales_supervisor
      @url_product_designer_peer 
      @url_PRM_peer
      @url_PRM_manager_subordinate
      @url_PRM_supervisor
      @url_QA_supervisor
      @url_PRM_manager_peer
      @url_QA_peer
      @url_PRM_manager_subordinate
      @url_pretoria_sales_supervisor
      @url_pretoria_sales_manager_supervisor
      @url_johannesburg_sales_supervisor 
      @url_goods_sales_supervisor
      @url_goods_manager_supevisor
      @url_durban_sales_supervisor 
      @url_durban_city_manager_supervisor
      @url_ct_sales_supervisor 
      @url_ct_sales_manager_supervisor
      @url_telesales_supervisor
      @url_telesales_manager_supervisor
      @url_strategic_accounts_peer
      @url_telesales_peer
      @url_telesales_manager_subordinate
      @url_telesales_supervisor
      @url_travel_peer

		mail(to: @user.email, 
				subject: 'Performance Appraisal', 
				template_path: 'user_mailer',
				template_name: 'welcome_email')


  	end

end
