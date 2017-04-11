class AddLinkToStory < ActiveRecord::Migration[5.0]
  def change
    add_column :stories, :link, :string
  end
end
