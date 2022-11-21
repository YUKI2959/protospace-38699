class PrototypesController < ApplicationController
  def index
    @prototypes = Prototype.includes(:prototypes)
  end

  def new
    @prototype = Prototype.new
  end

  def create
    @create = Prototype.new(prototype_params)
    if @create.save
      redirect_to root_path
    else
      render :new
    end
  end


  private
  def prototype_params
    params.require(:prototype).permit(:title, :catch_copy, :concept, :user, :image).merge(user_id: current_user.id)
  end

end