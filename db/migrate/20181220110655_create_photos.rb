class CreatePhotos < ActiveRecord::Migration[5.1]
  def change
    create_table :photos do |t|
      t.string :name
      t.string :prix
      t.string :photo
      t.text :description

      t.timestamps
    end
  end
end
