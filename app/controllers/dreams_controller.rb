class DreamsController < ApplicationController
  def new
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
