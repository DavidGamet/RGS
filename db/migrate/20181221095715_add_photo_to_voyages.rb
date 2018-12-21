class AddPhotoToVoyages < ActiveRecord::Migration[5.1]
  def change
    add_column :voyages, :photo, :string
  end
end
