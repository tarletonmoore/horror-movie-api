class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :image_url
      t.text :description
      t.string :subgenre

      t.timestamps
    end
  end
end
