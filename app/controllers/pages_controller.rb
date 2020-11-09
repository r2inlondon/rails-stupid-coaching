class PagesController < ApplicationController
  def question
  end

  def answer
    @user_ask = params[:user_ask]
    @answer = ""
    if @user_ask.include?('?')
      @answer = 'Silly question, get dressed and go to work!'
    elsif @user_ask == 'I am going to work'
      @answer = 'Great!'
    else
      @answer =  "I don't care, get dressed and go to work!"
    end
  end

  def home
  end
end
