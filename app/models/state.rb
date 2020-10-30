class State < ApplicationRecord
  validates :state_park, presence: true
  scope :ten_most_recent, -> { order(created_at: :desc).limit(10)}
end