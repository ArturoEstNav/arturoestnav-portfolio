class Project < ApplicationRecord
  validates :name, :description, :url, presence: true
  # attach pictures here
end
