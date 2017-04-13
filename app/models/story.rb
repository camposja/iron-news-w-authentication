class Story < ApplicationRecord
  belongs_to :created_by, class_name: "User"
  include ImageUploader[:image]
end
