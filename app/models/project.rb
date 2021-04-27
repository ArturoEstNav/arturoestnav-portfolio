class Project < ApplicationRecord
  validates :name, :description, :url, presence: true
  has_many :project_image_tags
  has_many :image_tags, through: :project_image_tags
  has_many_attached :screenshots
  has_one_attached :mobile_screenshot
end
