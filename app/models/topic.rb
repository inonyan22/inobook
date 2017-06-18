class Topic < ActiveRecord::Base
  validates :title, :content, presence: true
  mount_uploader :image_url, ImageUrlUploader
end
