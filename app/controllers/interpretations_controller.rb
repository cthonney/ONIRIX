class InterpretationsController < ApplicationController
  def analyze
  end

  def discuss
    url = 'https://api.openai.com/v1/engines/text-davinci-003/completions'
    headers = {
      'Content-Type' => 'application/json',
      'Authorization' => "Bearer #{ENV['OPEN_AI_API']}"
    }
    body = {
      'prompt' => 'Analyze this dream: I had a dream that I was in a field with my dog and then I woke up.',
      'max_tokens' => 100
    }
    connection = Faraday.new(url: url)
    response = connection.post do |req|
      req.headers = headers
      req.body = body.to_json
    end
    # render json: JSON.parse(response.body)

  end

  def new
    @dream = Dream.find(params[:dream_id])
    @interpretation = Interpretation.new
  end


  def create
    @dream = Dream.find(params[:dream_id])
    @interpretation = Interpretation.new(interpretation_params)
    @interpretation.dream = @dream
    if @interpretation.save
      redirect_to dreamlogs_path
    else
      redirect_to new_dream_interpretation_path(@dream)
    end
  end

  private

  def interpretation_params
    params.require(:interpretation).permit(:description)
  end
end
