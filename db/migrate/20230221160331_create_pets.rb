class CreatePets < ActiveRecord::Migration[7.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :specie
      t.date :date_found

      t.timestamps
    end
  end
end
