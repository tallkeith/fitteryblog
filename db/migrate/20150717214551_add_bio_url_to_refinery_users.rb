class AddBioUrlToRefineryUsers < ActiveRecord::Migration
  def change
    add_column :refinery_users, :bio_url, :string
  end
end
