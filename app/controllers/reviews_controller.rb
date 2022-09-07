class ReviewsController < ApplicationController
  def new
    @review = Review.new
    @user = User.find(params[:user_id])
  end

  def create
    @pet = Pet.find(params[:pet_id])
    @user = User.find(params[:user_id])

    @review = Review.new(review_params)
    @review.user = @user

    if @review.save
      redirect_to pet_veterinary_path(@pet, @user)
    else
      flash[:alert] = "Something went wrong."
      # render :new, :unprocessable_entity
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating, :user_id)
  end
end
