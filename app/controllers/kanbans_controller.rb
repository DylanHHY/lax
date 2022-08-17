class KanbansController < ApplicationController

  before_action :find_kanban

  def index
    @kanban_to_do = Kanban.where(state: "to_do")
    @kanban_doing = Kanban.where(state: "doing")
    @kanban_done = Kanban.where(state: "done")
  end

  def new
    @kanban = Kanban.new
  end
  
  def create
    @kanban = Kanban.new(kanban_params)
    if @kanban.save
      redirect_to "/"
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @kanban.update
      redirect_to "/"
    else
      render :edit
    end
  end

  def destroy
    @kanban.destroy
    redirect_to kanbans_path
  end

  private
  
  def kanban_params
    params.require(:kanban).permit(:title,:content)
  end

  def find_kanban
    @kanban = Kanban.find(params[:id])
  end

end
