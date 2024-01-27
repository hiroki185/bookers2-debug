class FavoritesController < ApplicationController
  def create
    post_image = Book.find(params[:post_image_id])
    favorite = current_user.favorites.new(post_image_id: post_image.id)
    favorite.save
    redirect_to books_path(post_image)
  end

  def destroy
    post_image = Book.find(params[:post_image_id])
    favorite = current_user.favorites.find_by(post_image_id: post_image.id)
    favorite.destroy
    redirect_to books_path(post_image)
  end
end
