class Bid < ApplicationRecord
  belongs_to :user
  belongs_to :npl

  validates :value, presence: true

  validates :value, numericality: { greater_than_or_equal_to: ->(bid) { bid.npl.min_value } }
end
