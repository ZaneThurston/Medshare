class Pin < ApplicationRecord
	belongs_to :user
	has_attached_file :image, styles: { medium: "300x300>"}
	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  validates :description, length: { maximum: 140 }
  validates :price, numericality: true
  validates_presence_of :title
  validates_presence_of :price
  validates_presence_of :condition
  validates_presence_of :location
end