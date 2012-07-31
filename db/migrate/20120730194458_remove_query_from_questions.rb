class RemoveQueryFromQuestions < ActiveRecord::Migration
  def up
    remove_column :questions, :query
  end

  def down
    add_column :questions, :query, :string
  end
end
