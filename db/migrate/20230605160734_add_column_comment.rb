class AddColumnComment < ActiveRecord::Migration[6.1]
  def change
    add_column :comments, :created_at, :datetime
    add_column :comments, :updated_at, :datetime

    # Set default values for existing records
    Comment.update_all(created_at: DateTime.now, updated_at: DateTime.now)

  end
end
