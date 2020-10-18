class Project < ApplicationRecord
  validates :name, :description, :url, presence: true
  # attach pictures here
  has_one_attached :screenshot
  has_one_attached :mobile_screenshot
end
