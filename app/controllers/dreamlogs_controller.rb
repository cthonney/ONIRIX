class DreamlogsController < ApplicationController
  def index
    @dreams = current_user.dreams.reject { |dream| dream.interpretations.empty? }
  end

  def show
    @dreamlog = Dreamlog.find(params[:id])
    @personal_detail = PersonalDetail.new
  end

  def new
    @dreamlog = Dreamlog.new
  end

  def create
    @dreamlog = Dreamlog.new
    @dreamlog.user = current_user
    if @dreamlog.save
      redirect_to dreamlog_path(@dreamlog)
    else
      render :new
    end
  end

  private

  def dreamlog_params
    params.require(:dreamlog).permit
  end
end
