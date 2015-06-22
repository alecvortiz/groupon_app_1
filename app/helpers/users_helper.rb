module UsersHelper
	def peer_forms(arr)
      @arr = arr
      @reviewee = @arr[(Time.now.to_i) % (@arr.length)]
      @copy = @reviewee 
      #gets random peer reviewee and discards from array 
          while @reviewee == @user 
            @reviewee = @arr[(Time.now.to_i) % (@arr.length)] 
          end 

          @arr.delete(@copy)
          @reviewee
  end
      
end
