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

end
