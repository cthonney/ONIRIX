class AddDetailsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :user, :string
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :gender, :string
    add_column :users, :occupation, :string
    add_column :users, :lovesituation, :string
    add_column :users, :age, :string
  end
end
