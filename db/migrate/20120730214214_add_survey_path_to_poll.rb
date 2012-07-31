class AddSurveyPathToPoll < ActiveRecord::Migration
  def change
    add_column :polls, :survey_path, :string
  end
end
