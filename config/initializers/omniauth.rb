Rails.application.config.middleware.use OmniAuth::Builder do
    provider :facebook, '2154000134843165', '8cf263c8374bd4c218b087d18eb1706a'
  end