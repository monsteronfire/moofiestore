class MoviesController < ApplicationController
  before_action :find_movie, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @movies = Movie.all.order("created_at DESC")
  end

  def show
    @cart_action = @movie.cart_action current_user.try :id
  end

  private

  def find_movie
    @movie = Movie.find(params[:id])
  end
end
