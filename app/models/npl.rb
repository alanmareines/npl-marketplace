class Npl < ApplicationRecord
  belongs_to :user
  mount_uploader :document, DocumentUploader
end
