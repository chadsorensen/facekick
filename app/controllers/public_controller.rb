class PublicController < ApplicationController
  
  before_filter :load_volunteers
  
  def index
    @volunteers = Volunteer.all
  end
  
  def load_volunteers
    @volunteers = Volunteer.all
  end

end
