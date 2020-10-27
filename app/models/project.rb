class Project < ApplicationRecord
  validates :name, :description, :url, presence: true
  # attach pictures here
  has_many_attached :screenshots
  has_one_attached :mobile_screenshot
end
