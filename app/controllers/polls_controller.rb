class PollsController < ApplicationController
  def index
    @polls = Poll.all
  end
  
  def new
    @poll = Poll.new
  end
  
  def create
    @poll = Poll.new(params[:poll])
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
    redirect_to(polls_path)
  end
  
  def destroy
    @poll = Poll.find(params[:id])
    @poll.delete
    redirect_to(polls_path)
  end
  
  

  
end
