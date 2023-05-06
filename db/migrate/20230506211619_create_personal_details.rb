class CreatePersonalDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :personal_details do |t|
      t.string :occupation
      t.string :gender
      t.string :lovesituation
      t.string :age
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
