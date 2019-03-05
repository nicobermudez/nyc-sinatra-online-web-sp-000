class LandmarksController < ApplicationController
  # add controller methods

  # View landing page for landmarks, allows you to view all landmarks
  get '/landmarks' do
    @landmarks = Landmark.all
    @figures = Figure.all
    erb :'landmarks/index'
  end

  # View New landmark page so you can create a landmark
  get '/landmarks/new' do
    erb :'/landmarks/new'
  end


  # Redirect and collect new landmark info
  post '/landmarks' do
    Landmark.create(name: params['landmark']['name'], year_completed: params['landmark']['year_completed'])
    redirect '/landmarks'
  end

  # Display single landmark by ID
  get '/landmarks/:id' do
    @landmark = Landmark.find(params[:id])
    erb :'landmarks/show'
  end

  #
end
