class ListsController < ApplicationController
  before_action :set_list, only: [:show]

  def index
    @lists = List.all
    @list = List.new
    @books = @list.bookmarks
    @bookmarks = Bookmark.where(@books)
  end

  def show
    @bookmark = Bookmark.new
  end

  def new
    @lists = List.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to list_path(@list)
    else
      render :new
    end
  end

  def destroy
    @list = List.find(params[:id])
    @list.destroy
    redirect_to lists_path
  end

  private

  def list_params
    params.require(:list).permit(:name, :photo)
  end

  def set_list
    @list = List.find(params[:id])
  end

end
