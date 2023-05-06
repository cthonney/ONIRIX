class AddDetailsToDreams < ActiveRecord::Migration[7.0]
  def change
    add_column :dreams, :maincharacter, :string
    add_column :dreams, :location, :string
    add_column :dreams, :action, :string
    add_column :dreams, :description, :text
    add_column :dreams, :emotion, :string
  end
end
