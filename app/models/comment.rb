class Comment < ApplicationRecord::Base
  belongs_to :user
  belongs_to :image
end
