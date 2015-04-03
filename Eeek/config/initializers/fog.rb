CarrierWave.configure do |config|
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     ENV["AWS_SECRET_KEY_ID"],                        # required
    aws_secret_access_key: ENV["AWS_SECRET_ACCESS_KEY"],                        # required
  }
  config.fog_directory  = 'eeek_app'                          # required
  config.fog_public     = false                                        # optional, defaults to true
end