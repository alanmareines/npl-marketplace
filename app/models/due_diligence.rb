class DueDiligence < ApplicationRecord
  belongs_to :npl
  mount_uploader :document, DocumentUploader
  validates :contract_document, :collateral_document, :other_document, presence: true
end
