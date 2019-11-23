class Message < ApplicationRecord
  belongs_to :user
  belongs_to :due_diligence
  validates :content, presence: true
end
