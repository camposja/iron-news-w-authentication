class Story < ApplicationRecord
  belongs_to :created_by, class_name: "User"
end

# <%= f.hidden_field :image, value: @story.cached_image_data %>
# <%= f.file_field :image %>
