class Contact < ApplicationRecord
  validates :pharmacy, presence: true
  validates :email, presence: true
  validates :phone, presence: true
  validates :message, presence: true
end
