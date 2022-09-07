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
      # CALENDAR
      start_date = params.fetch(:start_time, Date.today).to_date
      # For a monthly view:
      @appointments = Appointment.where(start_time: start_date.beginning_of_month.beginning_of_week..start_date.end_of_month.end_of_week)
      @veterinary = @user
      @reviews = Review.where(user: @veterinary).last(3)
      @reviews_filtered = Review.where(user: @veterinary).average(:rating)
      @average = @reviews_filtered.to_i
      @appointment = Appointment.new
      render 'veterinaries/show', status: :unprocessable_entity
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating, :user_id)
  end
end
