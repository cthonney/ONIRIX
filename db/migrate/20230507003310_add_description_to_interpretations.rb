class AddDescriptionToInterpretations < ActiveRecord::Migration[7.0]
  def change
    add_column :interpretations, :description, :string
  end
end
