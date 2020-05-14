class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, uniqueness: true, presence: true
  validates :phone_number, presence: true
  validates :address, presence: true
  validates :category, inclusion: { in: [ 'British', 'Indian', 'Italian', 'Belgian', 'Japanese'] }

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
