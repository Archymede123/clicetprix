class Pharmacy < ApplicationRecord
  mount_uploader :image, PhotoUploader
  validates :name, presence: true
  validates :opening_times, presence: true
  validates :url, presence: true
  validates :street, presence: true
  validates :zip_code, presence: true
  validates :city, presence: true

  geocoded_by :full_address
  after_validation :geocode

  def full_address
    "#{street}, #{zip_code} #{city}"
  end
end
