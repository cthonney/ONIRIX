class DreamsController < ApplicationController
  def new
    @dreamlog = Dreamlog.find(params[:dreamlog_id])
    @dream = Dream.new
  end

  def index
    # only the dreams that belong to the current user
    @dreams = current_user.dreams
  end

  def show
    @dream = Dream.find(params[:id])
    @interpretations = @dream.interpretations
    @interpretation = Interpretation.new
  end

  def create
    @dreamlog = Dreamlog.find(params[:dreamlog_id])
    @dream = Dream.new(dream_params)
    @dream.dreamlog = @dreamlog
    if @dream.save
      redirect_to new_dream_interpretation_path(@dream)
    else
      redirect_to new_dreamlog_dream_path(@dreamlog)
    end
  end

  private

  def dream_params
    params.require(:dream).permit(:maincharacter, :location, :action, :description, :emotion)
  end

end
