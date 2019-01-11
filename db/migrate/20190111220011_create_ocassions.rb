class CreateOcassions < ActiveRecord::Migration[5.1]
  def change
    create_table :ocassions do |t|
      t.string :name
      t.string :prix
      t.text :description
      t.string :etat
      t.text :adresse
      t.string :photo

      t.timestamps
    end
  end
end
