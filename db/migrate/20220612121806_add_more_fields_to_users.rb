class AddMoreFieldsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :gender, :string
    add_column :users, :city, :string
    add_column :users, :sexuality, :string
    add_column :users, :active, :boolean
  end
end
