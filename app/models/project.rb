class Project < ApplicationRecord
  validates :name, :description, :url, presence: true
  has_many :technologies, through: :project_technologies
  has_many_attached :screenshots
  has_one_attached :mobile_screenshot
end
