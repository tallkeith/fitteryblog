class AddAuthFbToRefineryUsers < ActiveRecord::Migration
  def change
    add_column :refinery_users, :auth_fb, :string
  end
end
