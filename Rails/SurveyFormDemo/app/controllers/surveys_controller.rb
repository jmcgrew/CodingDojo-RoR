class SurveysController < ApplicationController
  def index
  end

  def create
    session[:name] = params[:ninja_name]
    session[:location] = params[:location]
    session[:language] = params[:language]
    session[:comment] = params[:comment]
    session[:counter] = 0 if !session[:counter]
    session[:counter] += 1
    flash[:message] = "Thanks for submitting this form. You've submitted this form #{session[:counter]} times now."
    redirect_to("/result")
  end

  def result
  end

  def reset
    reset_session
    redirect_to("/")
  end
end
