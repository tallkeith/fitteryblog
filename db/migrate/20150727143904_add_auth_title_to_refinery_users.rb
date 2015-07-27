class AddAuthTitleToRefineryUsers < ActiveRecord::Migration
  def change
    add_column :refinery_users, :auth_title, :string
  end
end
