class RemoveSurveyLinkFromPoll < ActiveRecord::Migration
  def up
    remove_column :polls, :survey_link
  end

  def down
    add_column :polls, :survey_link, :string
  end
end
