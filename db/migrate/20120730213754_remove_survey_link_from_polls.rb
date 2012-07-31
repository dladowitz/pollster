class RemoveSurveyLinkFromPolls < ActiveRecord::Migration
  def up
    remove_column :polls, :Survey_link
  end

  def down
    add_column :polls, :Survey_link, :string
  end
end
