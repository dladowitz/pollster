require 'spec_helper'

describe Question do
  
  before :each do
    @question = Question.new
  
  end
  
  describe '#initialize' do
    it "should be an instance of a Question object" do
      @question.should be_an_instance_of Question
    end
  end
  
end