class SessionsController < ApplicationController
  def new
   session[:user_id] = user.id 
  end
end
