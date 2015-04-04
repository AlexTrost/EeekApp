# if Rails.env.production? 
  CarrierWave.configure do |config|
    config.fog_credentials = {
      provider:              'AWS',                        # required
      aws_access_key_id:     ENV["AWS_SECRET_KEY_ID"],                        # required
      aws_secret_access_key: ENV["AWS_SECRET_ACCESS_KEY"],
      region:                'US Standard'                          # required
    }
    config.fog_directory  = ENV["AWS_BUCKET"]                          # required
    config.fog_public     = false                                        # optional, defaults to true
  end
# end