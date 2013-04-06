module ApplicationHelper
	def gravatar_for(user)
		gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
		image_url = user.profile_image? ? user.profile_image : "https://secure.gravatar.com/avatar/#{gravatar_id}"
	    image_tag(image_url, alt: user.name, class: "gravatar")
	end
end
