class Attachment < ApplicationRecord
<<<<<<< HEAD
#  belongs_to :profile
#  mount_uploader :attachment, AttachmentUploader
 # validates :name, presence: true
=======
  belongs_to :profile
  mount_uploader :attachment, AttachmentUploader
  validates :name, presence: true
>>>>>>> a58b3cc731bf2e40e720f1254059cd4d95be462d
end
