class RemoveDetailsToUser < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :gender, :string
    remove_column :users, :occupation, :string
    remove_column :users, :lovesituation, :string
    remove_column :users, :age, :string
  end
end
