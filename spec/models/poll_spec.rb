require 'spec_helper'

describe Poll do
  
  before :all do
      @poll = Poll.new(:name => "This is a Poll")
      @poll.save
      @poll2 = Poll.new(:name => "This is a Poll")
      @poll2.save
   end
  
  it { @poll.should be_an_instance_of Poll } 
  it { @poll.edit_path.length.should be 10 } 
  it { @poll.survey_path.length.should be_between(5, 7) }
  it { @poll2.survey_path.length.should be_between(5, 7) }
  
end