class Pharmacy < ApplicationRecord
  has_one :address
  mount_uploader :image, PhotoUploader
end
