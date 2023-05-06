class DreamlogsController < ApplicationController
  def index
    @dreamlogs = current_user.dreamlogs
  end

  def show
    @dreamlog = Dreamlog.find(params[:id])
    @dreams = @dreamlog.dreams
  end

  def new
    @dreamlog = Dreamlog.new
  end
end
