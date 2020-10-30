class National < ApplicationRecord
  validates :state, presence: true
  validates :national_park, presence: true
end
