class QuestionsController < ApplicationController
  def ask

  end

  def answer
    @question = params[:question]
    if @question =~ /i am going to work/i
      @answer = "Great!"
    elsif @question.end_with?("?")
      @answer = "Silly question, get dressed and go to work!"
    elsif @question.blank?
      @answer = "I can't hear you!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
# If the message is I am going to work, the coach will answer Great!
# If the message has a question mark ? at the end, the coach will answer Silly question, get dressed and go to work!.
# Otherwise the coach will answer I don't care, get dressed and go to work!
