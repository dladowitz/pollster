class Poll < ActiveRecord::Base
  attr_accessible :name, :edit_path, :survey_path
end
