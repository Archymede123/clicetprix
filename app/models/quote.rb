class Quote < ApplicationRecord
  mount_uploader :image, PhotoUploader
  validates :content, presence: true
  validates :name, presence: true
end
