class CreateStories < ActiveRecord::Migration[5.0]
  def change
    create_table :stories do |t|
      t.integer :number
      t.string :title
      t.string :email

      t.timestamps
    end
  end
end
