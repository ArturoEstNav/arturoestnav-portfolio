class ProjectImageTag < ApplicationRecord
  belongs_to :image_tag
  belongs_to :project
end
