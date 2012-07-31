class PollsController < ApplicationController
  def index
    @poll = Poll.all
  end
  
  def new
    @poll = Poll.new
  end
  
  def create
    @poll = Poll.new(params[:poll])
    
    rand_num = rand(10 ** 10).to_s
    if Poll.find_by_edit_path(rand_num)
      self.create
    else
      @poll.edit_path = rand_num
    end
    
    temp_survey_path =  @poll.name[0..5].gsub(' ','')
    if Poll.find_by_survey_path(temp_survey_path)
      @poll.survey_path = temp_survey_path + rand(99).to_s
    else
      @poll.survey_path = temp_survey_path
    end
    
    @poll.save
    redirect_to(polls_path)
    
  end
   
  def show
    @poll = Poll.find_by_survey_path(params[:id])
  end
  
  def edit
    @poll = Poll.find_by_edit_path(params[:id])
  end
  
  def update
    @poll = Poll.find(params[:id])
    @poll.update_attributes(params[:poll])
    # @poll.save(params[:poll])
    redirect_to(polls_path)
    
  end
  
  

  
end
