class Profile < ApplicationRecord
    has_many :addresses
    has_many :orders
    belongs_to :document, optional: true
    has_one :user
end
