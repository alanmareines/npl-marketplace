class DueDiligence < ApplicationRecord
  belongs_to :npl
  mount_uploader :document, DocumentUploader
end
