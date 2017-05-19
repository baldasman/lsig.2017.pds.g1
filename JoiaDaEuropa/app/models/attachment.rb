class Attachment < ApplicationRecord
  has_one :order
  has_attached_file :attachments, :styles =>{ :medium => "300x300>", :thumb => "100x100>" }
  validates_attachment_content_type :attachments, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end