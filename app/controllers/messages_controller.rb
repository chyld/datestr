class MessagesController < ApplicationController
  def index
    @messages = @auth.messages_received
  end
  def show
    @message = @auth.messages_received.where(:id => params[:id]).first
  end
  def new
    @profile = User.find(params[:id])
    @message = Message.new
    @question = @profile.questions.sample

    sender = @auth.self_initiated.where(:receiver_id => params[:id]).first.try(:is_match)
    receiver = @auth.other_initiated.where(:sender_id => params[:id]).first.try(:is_match)

    if sender || receiver
      render :new
    elsif sender.nil? && !receiver
      render :question
    else
      redirect_to messages_path
    end
  end
  def answer
    question = Question.find(params[:question])
    answer = Answer.find(params[:answer])
    Match.create(:sender_id => @auth.id, :receiver_id => question.user.id, :is_match => answer.is_correct)
    redirect_to new_message_path(question.user)
  end
  def create
    params[:message][:sender_id] = @auth.id
    Message.create(params[:message])
    redirect_to messages_path
  end
end
