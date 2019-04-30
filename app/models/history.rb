class History < ApplicationRecord
  belongs_to :user
  mount_uploader :picture, ImageUploader
  belongs_to :user
end
