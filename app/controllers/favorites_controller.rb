class FavoritesController < ApplicationController
  def create
    post_image = Book.find(params[:book_id])
    favorite = current_user.favorites.new(book_id: post_image.id)
    favorite.save
    redirect_to request.referer
  end

  def destroy
    post_image = Book.find(params[:book_id])
    favorite = current_user.favorites.find_by(book_id: post_image.id)
    favorite.destroy
    redirect_to request.referer
  end
end


