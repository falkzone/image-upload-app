class BaseUploader < CarrierWave::Uploader::Base
  storage :fog
end
