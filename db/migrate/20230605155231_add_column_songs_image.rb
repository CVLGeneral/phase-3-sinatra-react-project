class AddColumnSongsImage < ActiveRecord::Migration[6.1]
  def change
    add_column :songs ,:image_path, :string

  end
end
