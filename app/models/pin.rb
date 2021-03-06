class Pin < ActiveRecord::Base
  attr_accessible :description, :image, :image_file_name
  

  validates :description, presence: true, length: { :minimum => 2 }
  validates :user_id, presence: true

  has_attached_file :image, styles: { medium: "320x240>"}

  validates_attachment :image, presence: true,
  															content_type: { content_type: ['image/jpeg', 'image/jpg', 'image/png', 'image/gif'] },
  															size: { less_than: 5.megabytes }

  belongs_to :user
  
  
end
