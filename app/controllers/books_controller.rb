class BooksController < ApplicationController

  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.create(book_params)
    if @book.valid?
      redirect_to book_path(@book)
    else
      render :new
    end
  end

  def show
    book_id
    @authors = Author.all
    @published = Published.new
  end

  def edit
    book_id
  end

  def update
    book_id

    if @book.update(book_params)
      redirect_to book_path(@book)
    else
      render :edit
    end
  end

  def destroy
    Book.destroy(params[:id])
    redirect_to books_path
  end



  private

  def book_params
    params.require(:book).permit(:title, :pages)
  end

  def book_id
    @book = Book.find(params[:id])
  end

end
