class LandmarksController < ApplicationController
  # add controller methods

  get '/landmarks' do
    @landmarks = Landmark.all 
    @figures = Figure.all 
    erb :'landmarks/index'
  end

  get '/landmarks/:id'
end
