class Profile < ApplicationRecord
  has_many :addresses
  has_many :orders
#  has_many :attachments
  has_one :document
  belongs_to :user
end
