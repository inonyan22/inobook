class Topic < ActiveRecord::Base
  validates :title, :content, presence: true
  mount_uploader :image_url, ImageUrlUploader
  belongs_to :user
  has_many :comments, dependent: :destroy
end
