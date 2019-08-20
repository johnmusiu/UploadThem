CarrierWave.configure do |config|
  if Rails.env.staging? || Rails.env.production? || Rails.env.development?
    config.root = Rails.root.join('tmp')
    config.cache_dir = 'carrierwave'
    config.fog_credentials = {
        :provider => 'AWS',
        :aws_access_key_id =>  Rails.application.credentials.aws[:access_key_id],
        :aws_secret_access_key =>  Rails.application.credentials.aws[:secret_access_key],
        :region => 'eu-central-1' # N. Virginia
    }
    config.fog_directory = Rails.application.credentials.aws[:bucket]
    config.storage = :fog

  else
    config.storage = :file
    config.enable_processing = Rails.env.development?
  end
end