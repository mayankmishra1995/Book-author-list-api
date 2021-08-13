class AuthorsController < ApplicationController

def index
  @authors = Author.all
end

def new
  @author = Author.new
end

def create
  @author = Author.create(author_params)
  if @author.valid?
    redirect_to author_path(@author)
  else
    render :new
  end
end

def show
  author_id
end

def edit
  author_id
end

def update
  author_id
  if @author.update(author_params)
    redirect_to author_path(@author)
  else
    render :edit
  end
end

def destroy
  Author.destroy(params[:id])
  redirect_to authors_path
end 



private

def author_params
  params.require(:author).permit(:name, :birth_year)
end

def author_id
  @author = Author.find(params[:id])
end

end
