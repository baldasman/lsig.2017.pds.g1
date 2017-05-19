class Attachment < ApplicationRecord
  has_one :order
  attr_accessor :attachment
  has_attached_file :attachment
end