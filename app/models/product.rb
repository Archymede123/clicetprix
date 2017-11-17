class Product < ApplicationRecord
  mount_uploader :image, PhotoUploader
  validates :image, presence: true
end
