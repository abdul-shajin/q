p '*' * 70
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '366984313375168', 'd9ea174dbe0d80ed2400366f9c8eb940',
           :scope => 'email, read_stream, read_friendlists, friends_likes, friends_status, offline_access', :display => 'popup'
end