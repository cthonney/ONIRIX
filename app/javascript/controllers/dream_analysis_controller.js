import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="dream-analysis"
export default class extends Controller {
  static targets = ["form"]
  static values = {
    dream: Object,
    openaiKey: String
  }
  connect() {
    console.log("Hello, Stimulus!", this.element)

    const dream = this.dreamValue
    console.log('Dream',dream)
    const dreamInput = `Interpret this dream: ${dream.maincharacter} doing ${dream.action} in ${dream.location}. the emotion of the dreamer was ${dream.emotion}. ${dream.description === "" ? "" : "The dreamer described the dream as: " + dream.description + "."}`
    console.log(dreamInput)

    fetch('https://api.openai.com/v1/completions', {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ' + this.openaiKeyValue
      },
      body: JSON.stringify({
        model: 'text-davinci-003',
        prompt: dreamInput,
        max_tokens: 100,
        temperature: 1.4,
    })
    }).then(response => response.json())
    .then((data) => {
      console.log('data from open AI', data)
      const interpretationForm = document.querySelector('#interpretation_description')
      interpretationForm.value = data.choices[0].text
    }).catch((error) => {
      console.error('Error:', error);


      const data = {
        "id": "cmpl-7DOTmcu7RyQtFhh6uzEVJpwEARPL9",
          "object": "text_completion",
            "created": 1683426718,
              "model": "text-davinci-003",
                "choices": [
                  {
                    "text": "\n\nThe dream may symbolize feeling isolated and unloved in your life. The unknown person could represent unknown aspects of yourself, or outside forces you feel threatened by. The unusual and fantastical activities suggest hidden talents or relationships coming to surface. The loneliness of the beach reflects a feeling of loneliness and rejection that the dreamer may be feeling in the present, leading to sadness and depression.",
                    "index": 0,
                    "logprobs": null,
                    "finish_reason": "stop"
                  }
                ],
                  "usage": {
          "prompt_tokens": 55,
            "completion_tokens": 78,
              "total_tokens": 133
        }
      }








    })
  }
}
