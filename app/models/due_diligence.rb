class DueDiligence < ApplicationRecord
  belongs_to :npl
  mount_uploader :contract_document, DocumentUploader
  mount_uploader :collateral_document, DocumentUploader
  mount_uploader :other_document, DocumentUploader
  has_many :messages
end
