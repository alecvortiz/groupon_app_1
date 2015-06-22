module UsersHelper
	def peer_forms(arr)
      @arr = arr
      @reviewee = @arr[(Time.now.to_i) % (@arr.length)]
      @copy = @reviewee 
      @self_check
      #gets random peer reviewee and discards from array 
          while @reviewee == @user 

            if @arr.length == 1
              @reviewee.first_name = "me"
              return @reviewee
            else 
              @reviewee = @arr[(Time.now.to_i) % (@arr.length)] 
            end

          end 

          @arr.delete(@copy)
          @reviewee
  end
      
end
