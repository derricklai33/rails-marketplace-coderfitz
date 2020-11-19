module UsersHelper
  # Defaults profile image for users that did not upload a photo as profile picture
  def image_for(user)
     if user.profile_picture.present? 
      user.profile_picture 
     else 
      "placeholder_images/Spongebob#{rand(1..4)}.jpg" 
    end 
  end
end
