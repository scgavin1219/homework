class CreatePerson < ActiveRecord::Migration[7.0]
  def change
    create_table :people do |t|
      t.string :name, null: false
      t.integer :house_id,
      t.timestamps
    end
  end
end
