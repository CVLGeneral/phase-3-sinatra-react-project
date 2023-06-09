class CreateSongs < ActiveRecord::Migration[6.1]
  def change
    create_table :songs do |t|
      t.string :title
      t.string :type
      t.string :genre
      t.string :description
      t.datetime :release_date


     end
  end
end
