class QuestionsController < ApplicationController
  def index
  end

  def new
    @question = Question.new
  end
  
  def create
    @question = Question.new(params[:question])
    
    @question.save
    redirect_to(polls_path)
    
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
