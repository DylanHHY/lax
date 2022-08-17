class KanbansController < ApplicationController

  def index
  end

  def new
    @kanban = Kanban.new
  end
  
  def create
  end

  private
  
  def kanban_params
    params.require(:kanban).permit(:title,:content)
  end

end
