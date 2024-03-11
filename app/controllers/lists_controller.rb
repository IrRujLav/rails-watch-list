class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def new
    @list = List.new

  end

  def create
    @list = List.new(list_paramas)
    @list.save
  end
end

private

def list_paramas
  params.require(:list).permit(:name)
end
