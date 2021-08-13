class PublishedsController < ApplicationController

  def index
    published = Published.all
    render json: published, include: [:author, :book]
  end

  def create
    @publish = Published.create(published_params)
    @book = Book.find(params[:published][:book_id])
    redirect_to book_path(@book)
  end

  def destroy
    @published = Published.find(params[:id])
    Published.destroy(params[:id])
    redirect_to book_path(@published.book_id)
  end


private

def published_params
  params.require(:published).permit(:author_id, :book_id)
end


end
