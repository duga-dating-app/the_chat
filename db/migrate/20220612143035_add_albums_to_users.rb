class AddAlbumsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :user, :albums
  end
end
