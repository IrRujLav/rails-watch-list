class BookmarksController < ApplicationController
  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.save
    redirect_to lists_path(@list)
  end

  private

  def strong_params
    params.require(:bookmark).permit(:list_id, :movie_id, :comment)
  end
end
