if Rails.env.production?
  OmniAuth.config.full_host = "http://falling-water-3758.herokuapp.com/"
else
  OmniAuth.config.full_host = "http://localhost:3000"
end
 
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['FACEBOOK_KEY'], ENV['FACEBOOK_SECRET']
  provider :twitter, ENV['TWITTER_KEY'], ENV['TWITTER_SECRET']
  provider :google, ENV['GOOGLE_KEY'], ENV['GOOGLE_SECRET']
end