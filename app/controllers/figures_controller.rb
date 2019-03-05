class FiguresController < ApplicationController
  # add controller methods

  get '/figures' do
    @figures = Figure.all
    erb :'figures/index'
  end

  get '/figures/new' do
    erb :'figures/new'
  end

  get '/figures/:id' do
    @figures = Figure.find(params[:id])
    erb :'figures/show'
  end

  get '/figures/:id/edit' do
    @figures = Figure.find(params[:id])
    erb :'figures/edit'
  end

  post '/figures' do
    Figure.create(name: params['figure']['name'])
    redirect '/figures'
  end

  patch'/figures/:id' do
    @figure = Figure.find(params[:id])
    @figure.update(params[:figure])

    @figure.save
    redirect to "/figures/#{@figure.id}"
  end





end
