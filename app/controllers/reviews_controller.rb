class ReviewsController < ApplicationController
  def index
    @movie = Movie.find(params[:movie_id])
    @reviews = Review.all
  end

  def new
    @movie = Movie.find(params[:movie_id])
    @review = @movie.reviews.new
  end

  def create
    @movie = Movie.find(params[:movie_id])
    @review = @movie.reviews.new(review_params)
    if @review.save
      redirect_to movie_reviews_path(@movie)
    else
      render :new
    end
  end

  def destroy
    binding.pry
    @movie = Movie.find(params[:movie_id])
    @reviews = Review.find(params[:id])
    @reviews.destroy
    redirect_to  movie_reviews_path(@movie)
  end

  def edit
  end

  def show
    @movie = Movie.find(params[:movie_id])
    @reviews = Review.all
  end

end

private
  def review_params
    params.require(:review).permit(:user, :stars, :movie_id, :analysis)
end
