class Pin < ActiveRecord::Base
  attr_accessible :description

  validates :description, presence: true, length: { :minimum => 2 }

  belongs_to :user
  validates :user_id, presence: true
end
