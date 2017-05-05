class Profile < ApplicationRecord
  has_many :addresses
  has_many :orders
<<<<<<< HEAD
#  has_many :attachments
=======
  has_many :attachments
>>>>>>> a58b3cc731bf2e40e720f1254059cd4d95be462d
  has_one :document
  belongs_to :user
end
