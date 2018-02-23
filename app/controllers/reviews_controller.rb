class ReviewsController < ApplicationController
def create
  @restaurant = Restaurant.find(params[:restaurant_id])
  @review = @restaurant.reviews.create(review_params)
  @review.user_id = current_user.id

  respond_to do |format|
    if @review.save
      format.html { redirect_to restaurant_path(@restaurant), notice: 'Review was successfully added.' }
    else
      session[:comment] = params[:review][:comment]
      format.html { redirect_to restaurant_path(@restaurant), notice: 'Must provide a rating between 1 and 5' }
    end
  end

end

private
 def review_params
   params.require(:review).permit(:rating, :comment)
 end

end
