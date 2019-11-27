class DueDiligence < ApplicationRecord
  belongs_to :npl
  mount_uploader :contract_document, DocumentUploader
  mount_uploader :collateral_document, DocumentUploader
  mount_uploader :other_document, DocumentUploader
  validates :contract_document, :collateral_document, :other_document, presence: true
  has_many :messages
end
