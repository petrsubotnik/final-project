class SearchController < ApplicationController
  def index
  end

  def results
    @locations = Accommodation.near(params[:term], params[:distance], :units => :km).take(20)
  end

end
