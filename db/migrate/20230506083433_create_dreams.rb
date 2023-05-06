class CreateDreams < ActiveRecord::Migration[7.0]
  def change
    create_table :dreams do |t|
      t.references :dreamlog, null: false, foreign_key: true

      t.timestamps
    end
  end
end
