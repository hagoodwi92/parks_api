class National < ApplicationRecord
  validates :state, presence: true
  validates :national_park, presence: true
  scope :state, -> { where(state: "California") }
  scope :state, -> { where(state: "Texas") }
  scope :ten_most_recent, -> { order(created_at: :desc).limit(10)}
end
