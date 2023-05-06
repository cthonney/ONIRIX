class PersonalDetailsController < ApplicationController
  def create
    @personal_detail = PersonalDetail.new(personal_detail_params)
    @dreamlog = Dreamlog.find(params[:dreamlog_id])
    @personal_detail.user = current_user
    if @personal_detail.save
      redirect_to new_dreamlog_dream_path(@dreamlog)
    else
      # return to the dreamlog show page with the correct id
      redirect_to dreamlog_path(@dreamlog)
    end
  end

  private

  def personal_detail_params
    params.require(:personal_detail).permit(:occupation, :gender, :lovesituation, :age)
  end

end
