class HomeController < ApplicationController
  
   before_filter :authorize, only: [:new,:edit] 

  def index
  end

  def about
  end

  def credit
  end
  
  def guides
  end
end
