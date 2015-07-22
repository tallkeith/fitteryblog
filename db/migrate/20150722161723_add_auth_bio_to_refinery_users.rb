class AddAuthBioToRefineryUsers < ActiveRecord::Migration
  def change
    add_column :refinery_users, :auth_bio, :text
  end
end
