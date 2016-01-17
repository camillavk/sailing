Rails.application.config.middleware.use OmniAuth::Builder do
  provider :meetup, Rails.application.secrets.meetup_key, Rails.application.secrets.meetup_secret
end
