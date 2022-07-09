class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    @list.save

    redirect_to list_params(@list)
  end

  private

  def list_params
    params.required(:list).permit(:name)
  end
end
