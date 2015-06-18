class UserMailer < ApplicationMailer

	def email
    	@users = User.all
    	@receiver
    	@url_salesperson_peer ='https://docs.google.com/forms/d/1jZSvb3UFvUuM-BQf2AJJfmsG60Y1LzOkmb8EyXBNYl0/viewform'
		@url_salesperson_subordinate = 'https://docs.google.com/forms/d/1_lzr-j7bmq7pSSTFsbKizJdWllCD-v_HZ4v5ldDbbIg/viewform'
		@url_salesperson_supervisor = 'https://docs.google.com/forms/d/16hi-amDALRlL9VVYT51rofjQU7svggwWtSHbkISeZ1E/viewform'


		@users.each do |user|
			@receiver = user
			mail(to: user.email, 
				subject: 'Performance Appraisal', 
				template_path: 'user_mailer',
				template_name: 'welcome_email')
		end

  	end



end
