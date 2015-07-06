require 'digest/sha2'
class UserMailer < ApplicationMailer
	include SendGrid
    sendgrid_category :use_subject_lines
  sendgrid_enable   :ganalytics, :opentrack
  sendgrid_unique_args :key1 => "value1", :key2 => "value2"


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
         @hr_admin_arr = arr[21]
         @hr_trainer_arr = arr[22]
         @marketing_arr = [23]
   

         @users = User.all
         @bus_intel = User.where(job_title: 'Business Intelligence')
         @ct_manager = User.where(job_title: 'Cape Town Sales Manager')
         @ct_sales = User.where(job_title: 'Cape Town Sales')
         @CEO = User.where(job_title: 'CEO')
         @city_planner = User.where(job_title: "City Planner")
         @city_planner_manager = User.where(job_title: "City Planner Manager")
         @cs = User.where(job_title: "CS")
         @cs_manager = User.where(job_title: "CS Manager")
         @cs_tl = User.where(job_title: "CS Team Leader")
         @durban_sales = User.where(job_title: "Durban Sales")
         @durban_manager = User.where(job_title: "Durban City Manager")
         @editorial = User.where(job_title: 'Editorial')
         @editorial_manager = User.where(job_title: 'Editorial Manager')
         @finance = User.where(job_title: 'Finance')
         @finance_manager = User.where(job_title: 'Finance Manager')
         @goods_administrator = User.where(job_title: 'Goods Administrator')
         @goods_manager = User.where(job_title: 'Goods Manager')
         @goods_sales = User.where(job_title: 'Goods Sales')
         @johannesburg_sales = User.where(job_title: 'Johannesburg Sales')
         @logistics = User.where(job_title: "Logistics")
         @logistics_manager = User.where(job_title: "Logistics Manager")
         @pretoria_sales = User.where(job_title: 'Pretoria Sales')
         @pretoria_manager = User.where(job_title: 'Pretoria Sales Manager')
         @product_designer = User.where(job_title: 'Product Designer')
         @PRM = User.where(job_title: 'PRM')
         @PRM_manager = User.where(job_title: 'PRM Manager')
         @QA = User.where(job_title: 'QA')
         @sales_manager = User.where(job_title: 'Sales Manager')
         @strategic_accounts = User.where(job_title: 'Strategic Accounts')
         @telesales = User.where(job_title: 'Telesales')
         @telesales_manager = User.where(job_title: 'Telesales Manager')
         @travel = User.where(job_title: 'Travel')

          #jobs that currently have no personel
         @bus_intel_manager = User.where(job_title: 'Business Intelligence Manager')
         @marketing = User.where(job_title: 'Marketing Associate')
         @marketing_manager = User.where(job_title: 'Marketing Manager')
         @johannesburg_sales_manager = User.where(job_title: 'Johannesburg Sales Manager')
         @strategic_accounts_manager = User.where(job_title: 'Strategic Accounts Manager')
         @hr_manager = User.where(job_title: "HR Manager")
         @hr_admin = User.where(job_title: 'HR Administrator')
         @hr_trainer = User.where(job_title: 'HR Trainer')

   		
	  

      @url_busintel_manager_subordinate = "https://docs.google.com/forms/d/1oHnibNmxC7G_LE7VVxzy3_PDEZhyumqq6kzCxM6qxVQ/viewform"
    	@url_busintel_peer = "https://docs.google.com/forms/d/1lkKkM0QQkfq0P_MlTMZaxWth9enske0kwBbrHNLtAPc/viewform"
      
      @url_busintel_supervisor = "https://docs.google.com/forms/d/1W_nWItSAim9_Klb8rPp5DVbY0fDaMqhJ3AajzXwq3g8/viewform"
      @url_busintel_manager_peer = "https://docs.google.com/forms/d/1Kvn81a0NldpK9Yh_XnS7U8fVkCAN8pyMZ856B_z5A5M/viewform"

      @url_sales_manager_subordinate = "https://docs.google.com/forms/d/1hiDqaJ_lOwrmjlfB7izHqZVkX2xznvoBzlJPj6Mvt14/viewform"
      @url_ct_sales_supervisor = "https://docs.google.com/forms/d/1RyCQJMIMhnCZvHmuqcfI-yQaUCTiUreHqXmy0q5Z66E/viewform"
      @url_ct_sales_manager_peer = "https://docs.google.com/forms/d/1j7_Q7r_zoavFSUN2qU5TZyRcYnnP4RXKZGvUOOEZNX8/viewform"

      @url_ct_sales_peer = "https://docs.google.com/forms/d/1ZU3Qmyj_HoCi1wKbOI0kIklnLFU7ikjuCH5AevcxGaU/viewform"
      @url_ct_sales_manager_subordinate = "https://docs.google.com/forms/d/10_y8wuP4mTGIDvDCy3FRFC3FmF5Has_yXyWv8ruo0Po/viewform"

      @url_city_planner_manager_peer = "https://docs.google.com/forms/d/1j7_Q7r_zoavFSUN2qU5TZyRcYnnP4RXKZGvUOOEZNX8/viewform"
      @url_city_planner_supervisor = "https://docs.google.com/forms/d/1iR_iaAzF90yIXssfmbeOSaRRBZDrGmGRAIh3aD0BDFE/viewform"

      @url_city_planner_peer = "https://docs.google.com/forms/d/1bZJzJtty6mBtryjdwRITm2gASlzwbu3hnC--6_EtFtc/viewform"
      @url_city_planner_manager_subordinate = "https://docs.google.com/forms/d/1SsU2GYMp0uzM6eaMC4IjWkR_f9FEcdIusoFvNo_8kA8/viewform"

      @url_CS_peer = "https://docs.google.com/forms/d/1H1Fows2N0ejEYvA6vcajXcMCDXiefij3Wqjz2Y4NtKU/viewform"
      @url_CS_team_leader_subordinate = "https://docs.google.com/forms/d/18mrCagfSyYdBHbSqOkj1HJgiGZKjtaLUF9VHPW4pe4g/viewform"
      
      @url_CS_supervisor = "https://docs.google.com/forms/d/17mFe7Bio4o-lBIrTnZaGuZRLQ3crxL3dPY-0ZU-nChw/viewform"
      @url_CS_team_leader_peer = "https://docs.google.com/forms/d/13WFpuJ6sK_NJ7ZOBb-8go-cE1jGjex-wCswACDM2zXc/viewform"
      @url_CS_manager_subordinate = "https://docs.google.com/forms/d/1G4db-dBTMutgcnVLNIprYb5YWqY4Ira9qzGSuBUAVSE/viewform"

      @url_CS_tl_supervisor = "https://docs.google.com/forms/d/1eLU53T2dvNQQbHyyFDx4P7J6tqb43DXrnWQx_Jkkv6E/viewform"
      @url_CS_manager_peer = "https://docs.google.com/forms/d/1cYgqlBppS3vDloWKQZaLMd1-L3yOAXYFCQ071Ve-9Ho/viewform"

      @url_durban_manager_subordinate = "https://docs.google.com/forms/d/1vClMBo4sIRjDb0qzemurTyZNRMrycYbuG9rBLD-DmAk/viewform"
      @url_durban_sales_peer = "https://docs.google.com/forms/d/1BYWTLShzhgdiG8R3UIZxexZ78DnnqN0esS-SnkaJ4dI/viewform"
      
      @url_durban_sales_supervisor = "https://docs.google.com/forms/d/1l1uPSxRFlNbwPTXZdeIyx6FEZ9mfgSXMowkun54D33Y/viewform"
      @url_durban_sales_manager_peer = "https://docs.google.com/forms/d/1O0OgdqHyRfm2y1kouF6KiM2sFgUpXB20h4KAZQ8X3j4/viewform"

      @url_editorial_manager_subordinate = "https://docs.google.com/forms/d/1obtXv0AlwfuhDlSfTnma6LavduXGx8kesWsm1ZLLCns/viewform"
      @url_editorial_peer = "https://docs.google.com/forms/d/18SASiBO28xb-JEt6rpPWcT8wg8GMw3P8XWEHza6C8eY/viewform"

      @url_editorial_supervisor = "https://docs.google.com/forms/d/1-pVGoRyilLp9Gv3Ppb62sBuEnpgnEHexBbLlbSfTTL8/viewform"
      @url_editorial_manager_peer = "https://docs.google.com/forms/d/1QgCyMJDY0EnOpsRVl-Y1zeQsyw0AnTB3nY1tcjtj7Ds/viewform"

      @url_finance_peer = "https://docs.google.com/forms/d/1sI3xFGzD_a4sfbBjmyGJWK5hz8R71Qa35-yv9UVHhSk/viewform"
      @url_finance_manager_subordinate = "https://docs.google.com/forms/d/1WFK0Lmjbx2nG85XXPlccJPCjzg7mPVTLfZ8uhGs_4LE/viewform"

      @url_finance_supervisor = "https://docs.google.com/forms/d/1UjCwSzkwtd2htMiOEcXdWoKmZiGct0aJcd-GXnCgn08/viewform"
      @url_finance_manager_peer = "https://docs.google.com/forms/d/17kgijL_KMGANlFkGzEG0WH_SY1e2AwG3ZEZTsjJQqxc/viewform"

      @url_goods_admin_peer = "https://docs.google.com/forms/d/1lmeTYrmEVqPauFp1f1hV4n31XtFwGDR7MzUlo2CuyEY/viewform"
      @url_goods_manager_subordinate = "https://docs.google.com/forms/d/1FbHvgo4QgU7uq6sE5EdI4QeM2i1slfiW97JHstdO8C8/viewform"
      
      @url_goods_sales_peer = "https://docs.google.com/forms/d/1RuA6PABp2neRG_CkCTSUZVka0sv7Ij2dmuYyr1mmBaw/viewform"

      @url_goods_admin_supervisor = "https://docs.google.com/forms/d/1tlExhS2c__uaNXhz9ijq1NQf4riY51crEK3wHSNP4Jc/viewform"
      @url_goods_sales_supervisor = "https://docs.google.com/forms/d/1hJg1BRs7YwrdOQXWszb1t1VmPgk-J88iBDDl30DI9jc/viewform"
      @url_goods_manager_peer = "https://docs.google.com/forms/d/1JqXvYdaRJkIxd6vSyAY-Y9zLAMLSrb3hPTm9KSO_Ius/viewform"

      @url_johannesburg_sales_peer = "https://docs.google.com/forms/d/1FjziweK1qOKFc0N8ESyqG0P3ufnTrIMrenYK75tXVbQ/viewform"
      @url_johannesburg_sales_manager_subordinate = "https://docs.google.com/forms/d/1gTWaZM73vaY5BOEGxtAqIOQHDM2vNblyN1D9DsGgfrw/viewform"

      @url_johannesburg_sales_supervisor = "https://docs.google.com/forms/d/1xM-IRqRRYGay1muO9PxVeV4DkPoGLt-sRQqZkPpF_Yc/viewform"
      @url_johannesburg_sales_manager_peer = "https://docs.google.com/forms/d/1xbzPjoWUEEf9dnMhxB1GRPPqr_3PKc3fHtoWAUidq2U/viewform"

      @url_logistics_manager_subordinate = "https://docs.google.com/forms/d/1VCcf0YbSDsPvrzzS2yrexxlZ6WWkcml96WCneHLRG2k/viewform"
      @url_logistics_peer = "https://docs.google.com/forms/d/1oTQ5ahBXLhvNBgCsrz3PCpckSlkKFT8aKwXQqa0f204/viewform"
      
      @url_logistics_supervisor = "https://docs.google.com/forms/d/1n9KWFGtF1QBjURvCX_tKV1pcfl7uB8yPMybQj8ZeZHY/viewform"
      @url_logistics_manager_peer = "https://docs.google.com/forms/d/1T-IINDwBXfqPEzZdn_Pq1EPNOa8sAd-Qa_ME4juHw3Q/viewform"

      @url_pretoria_sales_peer = "https://docs.google.com/forms/d/1YyM70gtD1IeeIvCxGqIEMyicei9zke5mpPtewBzD4Wc/viewform"
      @url_pretoria_sales_manager_subordinate = "https://docs.google.com/forms/d/1z6I9i523yWY5WWzN8Oaw-qFAMHL4dOhC8aeaKKKdnjQ/viewform"
      
      @url_pretoria_sales_supervisor = "https://docs.google.com/forms/d/1SIY7tsaPUIR-zYWT8BaI-QUudREddrEzCH1YTXE-c2k/viewform"
      @url_pretoria_sales_manager_peer = "https://docs.google.com/forms/d/1CW3rQVBROuAcgEq8pGSujJcpXpkWzM9bx2bykt58SLE/viewform"

      @url_product_designer_peer = "https://docs.google.com/forms/d/1W14cJmQ_uXA1R7Ti3v3o8sPud2YogKFWEB5RTBPCn_o/viewform"
      
      @url_PRM_peer = "https://docs.google.com/forms/d/1l7Glav7VHzFc4ufE0hZIHUxw2n9vBzcrQGhhKhMpk7w/viewform"
      @url_PRM_manager_subordinate = "https://docs.google.com/forms/d/1gXuxu-xqHxSK_XWVr-87Tk81qj1obS0gRcHFmAG5B-k/viewform"
      
      @url_PRM_supervisor = "https://docs.google.com/forms/d/1xgsTQ9zxOi6Ds7YPGn-4PwV98KATeUpFf0AULuTO_KA/viewform"
      @url_PRM_manager_peer = "https://docs.google.com/forms/d/1UWXk9Y1G1hxMhtwuLb09f7Fz5ZyeeKyejvk5lJ_5dxI/viewform"
      @url_QA_supervisor = "https://docs.google.com/forms/d/1UsShqS9dqTgkXWZBJnFNW-5xJqpb2Qnj8RgtrkX9GtE/viewform"

      @url_QA_peer = "https://docs.google.com/forms/d/153eLIwIuu5ypCu_Jcj59Fy6eJxoQ4gFT5C_Ipy2ayZI/viewform"
      
      @url_sales_manager_peer = "https://docs.google.com/forms/d/1rIJ3HJhIU4HKZrpiQmmcUKDE-G_4_4dWskHCNmaLpiI/viewform"
      @url_durban_manager_supervisor = "https://docs.google.com/forms/d/1vClMBo4sIRjDb0qzemurTyZNRMrycYbuG9rBLD-DmAk/viewform"
      @url_ct_manager_supervisor = "https://docs.google.com/forms/d/1u1asG8Z_NVQ_AfVhlBFCsS9pwiR1B_Lx0pi6E1NLHhs/viewform"
      @url_pretoria_sales_manager_supervisor = "https://docs.google.com/forms/d/1z6I9i523yWY5WWzN8Oaw-qFAMHL4dOhC8aeaKKKdnjQ/viewform"
      @url_johannesburg_sales_manager_supervisor = "https://docs.google.com/forms/d/1F8Rg2mMnt5hwjA7f-Qiq71yLzEPj9xkg2zhhz0ccp9g/viewform"
      @url_telesales_manager_supervisor = "https://docs.google.com/forms/d/1ouly2guvY6HqZFLyfoN4MmkcOPMy-RcPRoIhueHt9S4/viewform"
      
      @url_strategic_accounts_manager_subordinate = "https://docs.google.com/forms/d/1TUTDyTcBdXRTZCctkxNsu6sYMoMHyILdHRzg5hp53LA/viewform"
      @url_strategic_accounts_peer = "https://docs.google.com/forms/d/1A6sXN6N107tGtFuRPnfL6knjNHrJKuIQQkpEBOLreZM/viewform"
      
      @url_strategic_accounts_supervisor = "https://docs.google.com/forms/d/1hiDqaJ_lOwrmjlfB7izHqZVkX2xznvoBzlJPj6Mvt14/viewform"
      @url_strategic_accounts_manager_peer = "https://docs.google.com/forms/d/1qT9bm2BJ-2binLTnjXeZEiGxJn5YF5riVCNZS7WKAZI/viewform"
      
      @url_telesales_peer = "https://docs.google.com/forms/d/1dEYMKoRCwQgVQ6E14nlk5Lj5gWB5ROUMlbkzyI_iKPE/viewform"
      @url_telesales_manager_subordinate = "https://docs.google.com/forms/d/180CPgsWTrEpGqGTbeJhy2kkz7VqkEzLHdf1PucUJVvQ/viewform"

      @url_telesales_supervisor = "https://docs.google.com/forms/d/1Py_m-9hjdst4ZkZ8i6TbinncSNOKeaifn-D5TmyNOtQ/viewform"
      @url_telesales_manager_peer = "https://docs.google.com/forms/d/1KcdguaDpfoMkJxDiWylS31HhR3zbuipK3F7Ug1kUPqM/viewform"

      @url_travel_peer = "https://docs.google.com/forms/d/1eNbcsLKSZGx57A3O-eM4LNTb_pnxwcmIFvXeFGov5Vc/viewform"
      
      @url_sales_manager_supervisor = "https://docs.google.com/forms/d/1jZSvb3UFvUuM-BQf2AJJfmsG60Y1LzOkmb8EyXBNYl0/viewform"
      @url_finance_manager_supervisor = "https://docs.google.com/forms/d/1N05uOPsQsTdX_MseHMdS9y4LcLVto9TpZUWBvc3nKbo/viewform"
      @url_city_planner_manager_supervisor = "https://docs.google.com/forms/d/1bJPeg0mJniaDnkiPkN_q7yfezg-iOOYIdd9rGBKZYWQ/viewform"
      @url_editorial_manager_supervisor = "https://docs.google.com/forms/d/1O17spz_BV1FuDQ0ux7yYeYQ_09C1tNi_HPWyO6lLlQY/viewform"
      @url_logistics_manager_supervisor = "https://docs.google.com/forms/d/1uwnP5RF9w9B0BUyqx5Rn-4YT1neuW1qVqiz_-ttNSxg/viewform"
      @url_PRM_manager_supervisor = "https://docs.google.com/forms/d/18hc3ja5UifJDBw0Tufl-1PkM2XJ8ZW-AObtVKWIeULg/viewform"
      @url_goods_manager_supervisor = "https://docs.google.com/forms/d/1hwZ0EafUbmZhFMBf9aOQVaD5rQCUJ0LJKQprbk5Exq8/viewform"
      @url_busintel_manager_supervisor = "https://docs.google.com/forms/d/1WR_cO0BIXi3wKcfHRWNFAiJ6CdpENk_sd6AhIUbrjWA/viewform"
      @url_CS_manager_supervisor = "https://docs.google.com/forms/d/1A8n1_U2jvYtd_v2qTWWpuSqIVACQxaTVDS1NgeGM8Os/viewform"
      @url_hr_manager_supervisor = "https://docs.google.com/forms/d/1p3G2pdjcxak0REjsRPhlvCwFqEVu_yV0kNNaWXDEv9w/viewform"
      @url_busintel_manager_supervisor = "https://docs.google.com/forms/d/1WR_cO0BIXi3wKcfHRWNFAiJ6CdpENk_sd6AhIUbrjWA/viewform"
      @url_strategic_accounts_manager_supervisor = "https://docs.google.com/forms/d/1wGZyWmPmLs4vPfDWlpMU1qq9Bj0ooq1W8InpwKKWjTM/viewform"
      @url_marketing_manager_supervisor = "https://docs.google.com/forms/d/1IKbJEJ-MHkePJ2mH3jMrh7t_aylhpYW6Mf7rIjJye5o/viewform"

      @url_hr_admin_peer = "https://docs.google.com/forms/d/18FIgcv4a963Nr6YE-pkvNFW8FZSUj_qViZ2XnT5Vc6E/viewform"
      @url_hr_manager_subordinate = "https://docs.google.com/forms/d/1n9h_EBfV4oilF9Xj6l_YbAuA3sTh20S_GciPCTVcaaI/viewform"

      @url_hr_trainer_peer = "https://docs.google.com/forms/d/1TzEUIMl8UQFfyfot9YtZrxvydIvStjbJeImbWvR3Njg/viewform"

      @url_hr_manager_peer = "https://docs.google.com/forms/d/18Y5x6RFrxEejh9vVfZq9rkAo056Yq7-BryMpaPPtJes/viewform"
      @url_hr_admin_supervisor = "https://docs.google.com/forms/d/1K_cGfJkNVDguYnoH-CNC4stqygszCUQNAM58Wo0-Eco/viewform"
      @url_hr_trainer_supervisor = "https://docs.google.com/forms/d/1Id6pcA-ArulCoqFH2iTEPzw_hAwaFCdq0e7TFlwe97Y/viewform"

      @url_marketing_peer = "https://docs.google.com/forms/d/1Vr8xg0tc1hLwgtny3T6nw8PBaHSztVALRVlgsS09Cuo/viewform"
      @url_marketing_manager_subordinate = "https://docs.google.com/forms/d/1FtFqEOaflq7Y10ZnJwkrndllaLTb_SQp-VWoSer_8ik/viewform"

      @url_marketing_supervisor = "https://docs.google.com/forms/d/1wwH18i2qNPpwsdLatW5O00Uh2xBErOg3nDJtpdeTF6Q/viewform"
      @url_marketing_manager_peer = "https://docs.google.com/forms/d/1a8IUce6hrwaASvH20wKjxw5Eaim88bmk3KndjMxXT-M/viewform"


		mail(to: @user.email, 
				subject: 'Performance Appraisal', 
				template_path: 'user_mailer',
				template_name: 'welcome_email')


  	end

   def signup_email(user)
      @user = user

      mail(to: @user.email,
            subject: 'Welcome to Grouppraisal',
            template_path: 'user_mailer',
            template_name: 'signup_email.html')


   end

end
