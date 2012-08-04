require 'spec_helper'

describe Response do
  
  before :each do
    @response = Response.new
  
  end
  
  describe '#initialize' do
    it "should be an instance of a Response object" do
      @response.should be_an_instance_of Response
    end
  end
  
end