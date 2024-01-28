class FavoritesController < ApplicationController
  def create
    post_image = Book.find(params[:book_id])
    favorite = current_user.favorites.new(book_id: post_image.id)
    favorite.save
    redirect_to book_path(post_image)
  end

  def destroy
    post_image = Book.find(params[:book_id])
    favorite = current_user.favorites.find_by(book_id: post_image.id)
    favorite.destroy
    redirect_to book_path(post_image)
  end
end
