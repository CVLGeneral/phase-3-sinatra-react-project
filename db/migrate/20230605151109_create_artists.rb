class CreateArtists < ActiveRecord::Migration[6.1]
  def change
    create_table :artists do |table|
      table.string :name
      table.string :image_url

    end
  end
end
