class Address < ApplicationRecord
  belongs_to :pharmacy
  validates :street, presence: true
  validates :zip_code, presence: true
  validates :city, presence: true
  geocoded_by :full_address
  after_validation :geocode, if: :address_changed?

  def full_address
    "#{street}, #{zip_code} #{city}"
  end
end
