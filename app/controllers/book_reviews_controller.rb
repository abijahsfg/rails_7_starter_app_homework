class BookReviewsController < ApplicationController
  before_action :set_book_review, only: %i[ show edit update destroy ]

  # GET /book_reviews or /book_reviews.json
  def index
    @book_reviews = BookReview.where(book_id: params[:id])
    @current_book_id = params[:id]
  end

  # GET /book_reviews/1 or /book_reviews/1.json
  def show
    @book_reviews = BookReview.find(params[:id])
  end

  # GET /book_reviews/new
  def new
    # byebug
    @book_review = BookReview.new
    @current_book_id = params[:id]
  end

  # GET /book_reviews/1/edit
  def edit
  end

  # POST /book_reviews or /book_reviews.json
  def create
    @book_review = BookReview.new(book_review_params)
    respond_to do |format|
      if @book_review.save
        format.html { redirect_to book_review_url(@book_review), notice: "Book review was successfully created." }
        format.json { render :show, status: :created, location: @book_review }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @book_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /book_reviews/1 or /book_reviews/1.json
  def update
    respond_to do |format|
      if @book_review.update(book_review_params)
        format.html { redirect_to book_review_url(@book_review), notice: "Book review was successfully updated." }
        format.json { render :show, status: :ok, location: @book_review }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @book_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /book_reviews/1 or /book_reviews/1.json
  def destroy
    @book_review.destroy

    respond_to do |format|
      format.html { redirect_to book_reviews_url, notice: "Book review was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book_review
      @book_review = BookReview.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def book_review_params
      params.require(:book_review).permit(:book_id, :review, :name, :rate)
    end
end
