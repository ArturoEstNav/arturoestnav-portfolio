class ImageTag < ApplicationRecord
  has_many :projects, through: :project_image_tags
end
