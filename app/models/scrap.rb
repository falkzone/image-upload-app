class Scrap < ActiveRecord::Base
  mount_uploader :image, ScrapImageUploader
  mount_uploader :text_file, ScrapTextUploader
end
