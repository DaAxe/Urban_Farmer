class ReviewsController < ApplicationController

    def new
        @review = Review.new
        @review.rateable_id = params[:item]
        @review.rateable_type = "item" #params[:item]
    end

    def create
        item = Item.find(params[:review][:rateable_id])
        @review = item.reviews.new
        @review.user_id = current_user.id
        @review.rating = params[:review][:rating]
        @review.comment = params[:review][:comment]
        if @review.save
            redirect_to item_path(item)
        else
            flash[:alet] = "There was a problem creating the review"
            render :new
        end
    end

end
