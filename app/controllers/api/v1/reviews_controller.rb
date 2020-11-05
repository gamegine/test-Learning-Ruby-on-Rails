class Api::V1::ReviewsController < Api::V1::BaseController
  before_action :set_review, only: [:show, :edit, :update, :destroy]


  after_action :verify_authorized, except: :index
  after_action :verify_policy_scoped, only: :index

  # GET /reviews.json
  def index
    @reviews = policy_scope(Review.all)
  end

  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_review
        @review = Review.find(params[:id])
        authorize @review
    end
end
