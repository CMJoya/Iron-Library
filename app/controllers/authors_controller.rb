class AuthorsController < ApplicationController

  before_action do
    if @current_user.nil?
      redirect_to log_in_path
    end
  end

  def index
    @authors = Author.all

  end

  def show
    @author = Author.find_by id: params[:id]
  end

  def new
    @author = Author.new

  end

  def create
    @author = Author.new
    @author.first_name = params[:author][:first_name]
    @author.last_name = params[:author][:last_name]

    if @author.save
      redirect_to "/authors"
    else
      render :new
    end
  end

  def edit
    @author = Author.find_by id: params[:id]
  end

  def delete
    @author = Author.find_by id: params[:id]
    @author.destroy
    redirect_to "/authors"
  end

end
