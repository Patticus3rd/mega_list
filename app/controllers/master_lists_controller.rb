class MasterListsController < ApplicationController
  def index
    @lists=List.all

  end

  def create
    @list=List.new
  end

  def update
  end

  def destroy
  end

  private

  def set_list
    @lists=List.all
  end

  def list_params
    params.require(:name, :rank)
  end
  
end
