class QuestionsController < ApplicationController
  before_filter :ensure_logged_in
  def index
  end
  def show
  end
  def new
    @question = Question.new
  end
  def create
    question = Question.create(:question_text => params[:question][:question_text])
    @auth.questions << question
    params[:question][:answers].each do |answer|
      question.answers << Answer.create(:answer_text => answer[:text], :is_correct => answer[:correct].present?)
    end
    redirect_to questions_path
  end
  def edit
  end
  def update
  end
  def destroy
  end
  private
  def ensure_logged_in
    redirect_to root_path if @auth.nil?
  end
end
