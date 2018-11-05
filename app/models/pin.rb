class Pin < ApplicationRecord
	belongs_to :user
	has_attached_file :image, styles: { medium: "300x300>"}
	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  validates :description, length: { maximum: 140 }
  validates :price, numericality: true
end