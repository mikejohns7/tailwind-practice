class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
    @lists = List.all.order(:id)
    @tasks = @list.tasks.where.not(complete: true)
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new list_params
    @list.user = current_user
    if @list.save
      redirect_to @list
    else
      render :new
    end
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end
end
