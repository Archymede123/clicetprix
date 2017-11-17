class Address < ApplicationRecord
  belongs_to :pharmacy
  validates :street, presence: true
  validates :zip_code, presence: true
  validates :city, presence: true
end
