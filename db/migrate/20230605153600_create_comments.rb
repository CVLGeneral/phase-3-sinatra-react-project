class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
    t.string :comment
    t.integer :likes
    t.integer :song_id
    end
  end
end
