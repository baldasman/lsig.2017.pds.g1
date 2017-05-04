class Attachment < ApplicationRecord
  belongs_to :profile
  mount_uploader :attachment, AttachmentUploader
  validates :name, presence: true
end
