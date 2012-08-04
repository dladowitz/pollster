class Poll < ActiveRecord::Base
  attr_accessible :name, :edit_path, :survey_path
  
  before_create :generate_edit_path
  before_create :generate_survey_path
  
private

  def generate_edit_path
    rand_num = '%010d' % rand(10 ** 10).to_s
    if Poll.find_by_edit_path(rand_num)
      self.create
    else
      self.edit_path = rand_num
    end
  end
  
  def generate_survey_path
    temp_survey_path =  self.name[0..5].downcase.gsub(' ','')
    if Poll.find_by_survey_path(temp_survey_path)
      self.survey_path = temp_survey_path + rand(99).to_s
    else
      self.survey_path = temp_survey_path
    end
  end

end
