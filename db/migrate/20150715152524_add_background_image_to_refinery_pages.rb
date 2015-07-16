class AddBackgroundImageToRefineryPages < ActiveRecord::Migration
  def change
    add_column :refinery_pages, :background_image_id, :integer
  end
end
