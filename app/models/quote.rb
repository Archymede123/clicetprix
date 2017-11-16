class Quote < ApplicationRecord
  mount_uploader :image, PhotoUploader
end
