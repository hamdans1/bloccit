class QuestionsController < ApplicationController
  def new
    @question = Question.new
  end

  def create
    @question = Question.new
    @question.title = params[:question][:title]
    @question.body = params[:question][:body]
    @question.resolved = params[:question][:resolved]
    
    if @question.save
      flash[:notice] = "Question Saved"
      redirect_to @question
    else
      flash.now[:alert] = "There was an error with your question"
      render :new
    end
  end

  def update
    @question = Question.find(params[:id])
    @question.title = params[:question][:title]
    @question.body = params[:question][:body]
    @question.resolved = params[:question][:resolved]
    
    if @question.save
      flash[:notice] = "Question has been updated"
      redirect_to @question
    else
      flash.now[:alert] = "There was an error with your update"
      render :edit
    end
  end

  def edit
    @questions = Question.find(params[:id])
  end

  def destroy
    @question = Question.find(params[:id])
    
    if @question.destroy
      flash[:notice] = "\"#{@question.title}\" has been deleted."
      redirect_to questions_path
    else 
      flash.now[:alert] = "There was an error in your deletion request."
      render :show
    end
  end

  def index
    @questions = Question.all
  end

  def show
    @question = Question.find(params[:id])
  end
end
