class QuestionsController < ApplicationController
  def ask
    @user_message = params[:ask_input]
  end

  def answer
    @user_message = params[:ask_input]

    if @user_message == "I am going to work"
      @coach_answer = "Great!"
    elsif @user_message.include? "\?"
      @coach_answer = "Silly question, get dressed and go to work!"
    else
      @coach_answer = "I don't care, get dressed and go to work!"
    end
  end
end
