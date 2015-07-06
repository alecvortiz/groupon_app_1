class User < ActiveRecord::Base

	def user_full_name
		"#{user.first_name} #{user.last_name}"
	end

	def self.search_by_user_full_name(query)
    	where("(first_name || ' ' || last_name || job_title ) LIKE :q", :q => "%#{query}%")

  	end
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  enum role: [:employee, :admin]
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :results
end
