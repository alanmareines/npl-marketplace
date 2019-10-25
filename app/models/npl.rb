class Npl < ApplicationRecord
  belongs_to :user
  has_many :bids, dependent: :destroy
  mount_uploader :document, DocumentUploader
end
