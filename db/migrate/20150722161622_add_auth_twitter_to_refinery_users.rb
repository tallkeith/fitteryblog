class AddAuthTwitterToRefineryUsers < ActiveRecord::Migration
  def change
    add_column :refinery_users, :auth_twitter, :text
  end
end
