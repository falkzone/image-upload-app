class ScrapImageUploader < BaseUploader
  include CarrierWave::MiniMagick

  version :fill_thumb do
    process :resize_to_fill => [100,100]
  end

  version :fit_thumb do
    process :resize_to_fit => [100,100]
  end
end
