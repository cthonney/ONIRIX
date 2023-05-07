class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
  end

  def about
  end

  def contact
  end

  def blog
    @blogs = [
      {
        title: "Unlocking the Mysteries of Dream Interpretation",
        date: "2023-01-10",
        author: "Dr. Deirdre Barrett",
        content: "An article that talks about how dreams can be interpreted and decoded by recognizing patterns and symbols, and provides tips for understanding and analyzing them."
      },
      {
        title: "A Guide to Understanding Your Dreams",
        date: "2023-02-01",
        author: "Elizabeth Hartney, PhD",
        content: "Discuss the benefits of dream interpretation and offers guidance on how to remember and interpret dreams, including common themes and symbols."
      },
      {
        title: "Dream Analysis 101: Interpretation Techniques and Tips",
        date: "2023-03-01",
        author: "Crystal Raypole",
        content: "Explore different techniques for analyzing dreams, such as journaling and active imagination, and highlights the importance of understanding personal associations with dream symbols."
      },
      {
        title: "What Do Dreams Mean? A Beginner's Guide to Dream Interpretation",
        date: "2021-04-01",
        author: " Katie Heaney",
        content: "An article that offers a beginner's guide to understanding dreams, including their purpose, common themes, and how to interpret them."
      },
      {
        title: "How to Interpret Your Dreams: A Beginner's Guide",
        date: "2020-05-01",
        author: "Carolyn Steber",
        content: "It provides a step-by-step guide to interpreting dreams, including tips for remembering and recording dreams and techniques for interpreting symbols and themes."
      },
      {
        title: "The Science of Dream Interpretation: Understanding REM Sleep",
        date: "2020-06-01",
        author: "Stephanie Watson",
        content: "It delves into the science behind dreams and how they relate to REM sleep, and discusses the different theories on why we dream."
      },
      {
        title: "7 Common Dream Themes and Their Meanings",
        date: "2019-07-01",
        author: "Arlin Cuncic",
        content: "It provides insight into seven common dream themes, including falling, flying, and being chased, and offers possible interpretations and meanings for each."
      }
    ]
  end

  def tac
  end

  def policies
  end


end
