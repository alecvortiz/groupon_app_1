class ChangeParamsForUsers < ActiveRecord::Migration
  def change
  	change_column :users, :first_name, :string, "" => false
    change_column :users, :last_name, :string, "" => false
    change_column :users, :job_title, :string, "" => false
  end
end
