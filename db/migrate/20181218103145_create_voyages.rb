class CreateVoyages < ActiveRecord::Migration[5.1]
  def change
    create_table :voyages do |t|
      t.string :name
      t.string :adresse
      t.string :date
      t.string :prix
      t.text :description

      t.timestamps
    end
  end
end
