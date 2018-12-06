class Topic < ApplicationRecord
  validates :user_id, presence: true
  validates :description, presence: true
  validates :image, presence: true


  # has_secure_password
  belongs_to :user
  has_many :topics
  mount_uploader :image, ImageUploader
  validates :image
    file_size: {
      maximum: 10.megabytes.to_i # 最大10MBに制限
    }
    has_many :favorites
end
