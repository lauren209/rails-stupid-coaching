class CoachingController < ApplicationController
  def answer
    @p = params[:response]
    @para_upcase = @p.upcase

    if @p == @para_upcase
      coach_answer_enhanced(@p)
    else
      coach_answer(@p)
    end

  end



def ask
end


private
def coach_answer(your_message)
  if your_message.include? "?"
    @coach_answer = "Silly question, get dressed and go to work!"
  elsif your_message.include?("?") != true && your_message != "I am going to work right now!"
    @coach_answer = "I don't care, get dressed and go to work!"
  else
    @coach_answer = ""
  end
end

def coach_answer_enhanced(your_message)
  # TODO: return coach answer to your_message, with additional custom rules of yours!
  if your_message == your_message.upcase && your_message == "I AM GOING TO WORK RIGHT NOW!"
    @coach_answer = "Drop and give me 20!"
  elsif your_message == your_message.upcase && your_message.include?("?")
    @coach_answer = "I can feel your motivation! Silly question, get dressed and go to work!"
  else your_message == your_message.upcase && your_message.include?("?") != true
    @coach_answer = "I can feel your motivation! I don't care, get dressed and go to work!"
  end


  end
end
