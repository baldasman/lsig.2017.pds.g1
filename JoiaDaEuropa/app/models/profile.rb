class Profile < ApplicationRecord::Base
  has_many :addresses
  has_many :orders
  has_one :document
  belongs_to :user
end
