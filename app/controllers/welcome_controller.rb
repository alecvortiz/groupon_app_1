class WelcomeController < ApplicationController

  include UsersHelper
  

 

  def sent

  	@users = User.all
  	@bus_intel = User.where(job_title: 'Business Intelligence')
  	@ct_manager = User.where(job_title: 'Cape Town Sales Manager')
  	@ct_sales = User.where(job_title: 'Cape Town Sales')
  	@CEO = User.where(job_title: 'CEO')
  	@city_planner = User.where(job_title: "City Planner")
  	@city_planner_manager = User.where(job_title: "City Planner Manager")
  	@cs = User.where(job_title: "CS")
  	@cs_manager	= User.where(job_title: "CS Manager")
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
  	@HR_manager = User.where(job_title: 'HR Manager')
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
      @bus_intel_manager = User.where(job_title: 'Business Intelligence Manager')
     @marketing = User.where(job_title: 'Marketing Associate')
     @marketing_manager = User.where(job_title: 'Marketing Manager')
     @johannesburg_sales_manager = User.where(job_title: 'Johannesburg Sales Manager')
     @strategic_accounts_manager = User.where(job_title: 'Strategic Accounts Manager')
     @hr_admin = User.where(job_title: 'HR Administrator')
     @hr_trainer = User.where(job_title: 'HR Trainer')


     @bus_intel_arr = [] 
       @bus_intel.each do |person| 
        @bus_intel_arr << (person) 
       end 


       @ct_sales_arr = [] 
       @ct_sales.each do |person| 
         @ct_sales_arr << (person) 
       end 
      

       @CEO_arr = [] 
       @CEO.each do |person| 
         @CEO_arr << (person) 
       end 
      

       @city_planner_arr = [] 
       @city_planner.each do |person| 
         @city_planner_arr << (person) 
       end 
      

       @cs_arr = [] 
       @cs.each do |person| 
         @cs_arr << (person) 
       end 

       @cs_tl_arr = [] 
       @cs_tl.each do |person| 
         @cs_tl_arr << (person) 
       end 
      

       @durban_sales_arr = [] 
       @durban_sales.each do |person| 
         @durban_sales_arr << (person) 
       end 
      

       @editorial_arr = [] 
       @editorial.each do |person| 
         @editorial_arr << (person) 
       end 
      

       @finance_arr = [] 
       @finance.each do |person| 
         @finance_arr << (person) 
       end 
      

       @goods_administrator_arr = [] 
       @goods_administrator.each do |person| 
         @goods_administrator_arr << (person) 
       end 
      

       @goods_sales_arr = [] 
       @goods_sales.each do |person| 
         @goods_sales_arr << (person) 
       end 
      

       @johannesburg_sales_arr = [] 
       @johannesburg_sales.each do |person| 
         @johannesburg_sales_arr << (person) 
       end 
      

       @logistics_arr = [] 
       @logistics.each do |person| 
         @logistics_arr << (person) 
       end 

       @logistics_manager_arr = [] 
       @logistics_manager.each do |person| 
         @logistics_manager_arr << (person) 
       end 
      

       @pretoria_sales_arr = [] 
       @pretoria_sales.each do |person| 
         @pretoria_sales_arr << (person) 
       end 
      

       @product_designer_arr = [] 
       @product_designer.each do |person| 
         @product_designer_arr << (person) 
       end 
      

       @PRM_arr = [] 
       @PRM.each do |person| 
         @PRM_arr << (person) 
       end 
      

       @QA_arr = [] 
       @QA.each do |person| 
         @QA_arr << (person) 
       end 
      

       @strategic_accounts_arr = [] 
       @strategic_accounts.each do |person|  
         @strategic_accounts_arr << (person) 
       end 
      

       @telesales_arr = [] 
       @telesales.each do |person| 
         @telesales_arr << (person) 
       end 
      

       @travel_arr = [] 
       @travel.each do |person| 
         @travel_arr << (person) 
       end 

        @hr_admin_arr = [] 
        @hr_admin.each do |person| 
         @hr_admin_arr << (person) 
       end 

       @hr_trainer_arr = [] 
       @hr_trainer.each do |person| 
         @hr_trainer_arr << (person) 
       end 
     
         @marketing_arr = [] 
         @marketing.each do |person| 
           @marketing_arr << (person) 
         end 
      

       @arr = [@bus_intel_arr, @ct_sales_arr, @CEO_arr, @city_planner_arr, @cs_arr, @durban_sales_arr, @editorial_arr, @finance_arr, @goods_administrator_arr, @johannesburg_sales_arr, @logistics_arr, @pretoria_sales_arr, @PRM_arr, @QA_arr, @strategic_accounts_arr, @telesales_arr, @travel_arr, @product_designer_arr, @cs_tl_arr, @goods_sales_arr, @logistics_manager_arr, @hr_admin_arr, @hr_trainer_arr, @marketing_arr] 

  end

  def loading

  end
  
end
