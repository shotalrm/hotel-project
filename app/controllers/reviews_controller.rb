class ReviewsController < ApplicationController
  before_action :set_review, only: %i[ show edit update destroy ]

  # GET /reviews or /reviews.json
  def index
    @hotel = Hotel.find(params[:hotel_id])
    @reviews = @hotel.reviews
  end

  # GET /reviews/1 or /reviews/1.json
  def show
    @hotel = Hotel.find(params[:hotel_id])
    @review = Review.find(params[:id])
  end

  # GET /reviews/new
  def new
    @hotel = Hotel.find(params[:hotel_id])
    @review = @hotel.reviews.build
  end

  # GET /reviews/1/edit
  def edit
  end

  # POST /reviews or /reviews.json
  def create
    @hotel = Hotel.find(params[:hotel_id])
    @review = Review.new(review_params)
    if @review.save
      redirect_to hotel_reviews_path
    end
  end

  # PATCH/PUT /reviews/1 or /reviews/1.json
  def update
    respond_to do |format|
      if @review.update(review_params)
        format.html { redirect_to review_url(@review), notice: "Review was successfully updated." }
        format.json { render :show, status: :ok, location: @review }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reviews/1 or /reviews/1.json
  def destroy
    @review.destroy

    respond_to do |format|
      format.html { redirect_to reviews_url, notice: "Review was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_review
      @review = Review.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def review_params
      params.require(:review).permit(:rate, :title, :user_name, :description, :hotel_id)
    end
end
