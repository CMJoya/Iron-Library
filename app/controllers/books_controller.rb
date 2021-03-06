class BooksController < ApplicationController

  before_action do
    if @current_user.nil?
      redirect_to log_in_path
    end
  end
  
  def index
    @book = Book.all
  end

  def show
    @book = Book.find_by id: params[:id]
  end

  def new
    @book= Book.new
  end

  def create
    @book = Book.new
    @book.title = params[:book][:title]
    @book.price = params[:book][:price]
    @book.photo_url = params[:book][:photo_url]

    if @book.save
      redirect_to books_path
    else
      render :new
    end
  end

  def edit
    @book = Book.find_by id: params[:id]
  end

  def update
    @book = Book.find_by id: params[:id]
    @book.title = params[:book][:title]
    @book.price = params[:book][:price]
    @book.photo_url= params[:book][:photo_url]

    if @book.save
      redirect_to book_path(id: @book.id)
    else
      render :edit
    end
  end

  def delete
    @book = Book.find_by id: params[:id]
    @book.destroy
    redirect_to book_path
  end
end
