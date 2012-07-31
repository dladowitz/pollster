class AddEditPathToPoll < ActiveRecord::Migration
  def change
    add_column :polls, :edit_path, :string
  end
end
