class Pharmacy < ApplicationRecord
  has_one :address, dependent: :destroy
  accepts_nested_attributes_for :address

  mount_uploader :image, PhotoUploader
  validates :name, presence: true
  validates :opening_times, presence: true
  validates :url, presence: true
  validates :address, presence: true
end

