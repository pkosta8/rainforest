class ReviewsController < ApplicationController

  def create
    @product = Product.find(params[:product_id])
    @review = @product.reviews.new
    @review.comment = params[:review][:comment]

    if @review.save
      flash[:notice] = "Comment added successfully!"
      redirect_to product_path(@product)
    else
      render 'products/show'
    end
  end

  def edit
    @product = Product.find(params[:product_id])
    @review = @product.reviews.find(params[:id])
  end

  def update
    @review = Review.find(params[:id])

    @review.comment = params[:review][:comment]

    if @review.save
      flash[:notice] = "Review updated!"
      redirect_to product_url(@review.product_id)
    else
      render :edit
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    flash[:notice] = "Comment deleted!"
    redirect_to product_path(params[:product_id])
  end

end
