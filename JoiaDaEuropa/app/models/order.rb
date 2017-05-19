class Order < ApplicationRecord
  belongs_to :profile
  belongs_to :estado, optional: true
end