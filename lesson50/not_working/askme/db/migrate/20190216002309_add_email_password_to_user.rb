class AddEmailPasswordToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :email, :string
    add_column :users, :password_hash, :string
    add_column :users, :password_salt, :string

    # Эта строка добавит колонке юзера поле аватара
    add_column :users, :avatar_url, :string
  end
end
