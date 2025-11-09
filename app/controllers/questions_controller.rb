GOTOWORK = "I am going to work"
COACH_REPLY_SILLY = "Silly question, get dressed and go to work!"
COACH_REPLY_GO = "I don't care, get dressed and go to work!"
COACH_REPLY_GREAT = "Great!"


class QuestionsController < ApplicationController
  def ask
    
  end

  def answer
    @question = params[:question]
    # Test for a question (test for ending '?' char.)
    if @question[-1] == '?'
      @answer = COACH_REPLY_SILLY
    elsif @question == GOTOWORK
      @answer = COACH_REPLY_GREAT
    else
        @answer = COACH_REPLY_GO
    end
  end

end
