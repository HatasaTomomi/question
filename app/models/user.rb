class User < ApplicationRecord
  validates :name, presence: true,  length: { maximum:225}
  validates :email,  format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  validates_format_of :password, :with => /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]{8,32}+\z/i
has_secure_password
 has_many :topics
 has_many :favorites
 has_many :favorite_topics, through: :favorites, source: 'topic'
 has_many :images
 has_many :comments

   def already_liked?(post)
     self.likes.exists?(post_id: post.id)
   end
end
