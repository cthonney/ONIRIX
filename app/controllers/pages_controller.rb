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
        title: "Dreams and the Subconscious",
        date: "2020-10-01",
        author: "J. Doe",
        content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod, nisl quis aliquam ultricies, nunc nisl ultricies nunc, vitae aliquam nisl nunc vitae nisl. Sed euismod, nisl quis aliquam ultricies, nunc nisl ultricies nunc, vitae aliquam nisl nunc vitae nisl. Sed euismod, nisl quis aliquam ultricies, nunc nisl ultricies nunc, vitae aliquam nisl nunc vitae nisl. Sed euismod, nisl quis aliquam ultricies, nunc nisl ultricies nunc, vitae aliquam nisl nunc vitae nisl."
      },
      {
        title: "Dreams and the Subconscious",
        date: "2023-10-01",
        author: "J. Doe",
        content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod, nisl quis aliquam ultricies, nunc nisl ultricies nunc, vitae aliquam nisl nunc vitae nisl. Sed euismod, nisl quis aliquam ultricies, nunc nisl ultricies nunc, vitae aliquam nisl nunc vitae nisl. Sed euismod, nisl quis aliquam ultricies, nunc nisl ultricies nunc, vitae aliquam nisl nunc vitae nisl. Sed euismod, nisl quis aliquam ultricies, nunc nisl ultricies nunc, vitae aliquam nisl nunc vitae nisl."
      },
      {
        title: "Dreams and the Subconscious",
        date: "2022-10-01",
        author: "J. Doe",
        content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod, nisl quis aliquam ultricies, nunc nisl ultricies nunc, vitae aliquam nisl nunc vitae nisl. Sed euismod, nisl quis aliquam ultricies, nunc nisl ultricies nunc, vitae aliquam nisl nunc vitae nisl. Sed euismod, nisl quis aliquam ultricies, nunc nisl ultricies nunc, vitae aliquam nisl nunc vitae nisl. Sed euismod, nisl quis aliquam ultricies, nunc nisl ultricies nunc, vitae aliquam nisl nunc vitae nisl."
      },
      {
        title: "Dreams and the Subconscious",
        date: "2021-10-01",
        author: "J. Doe",
        content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod, nisl quis aliquam ultricies, nunc nisl ultricies nunc, vitae aliquam nisl nunc vitae nisl. Sed euismod, nisl quis aliquam ultricies, nunc nisl ultricies nunc, vitae aliquam nisl nunc vitae nisl. Sed euismod, nisl quis aliquam ultricies, nunc nisl ultricies nunc, vitae aliquam nisl nunc vitae nisl. Sed euismod, nisl quis aliquam ultricies, nunc nisl ultricies nunc, vitae aliquam nisl nunc vitae nisl."
      },
      {
        title: "Dreams and the Subconscious",
        date: "2020-10-01",
        author: "J. Doe",
        content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod, nisl quis aliquam ultricies, nunc nisl ultricies nunc, vitae aliquam nisl nunc vitae nisl. Sed euismod, nisl quis aliquam ultricies, nunc nisl ultricies nunc, vitae aliquam nisl nunc vitae nisl. Sed euismod, nisl quis aliquam ultricies, nunc nisl ultricies nunc, vitae aliquam nisl nunc vitae nisl. Sed euismod, nisl quis aliquam ultricies, nunc nisl ultricies nunc, vitae aliquam nisl nunc vitae nisl."
      },
      {
        title: "Dreams and the Subconscious",
        date: "2020-10-01",
        author: "J. Doe",
        content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod, nisl quis aliquam ultricies, nunc nisl ultricies nunc, vitae aliquam nisl nunc vitae nisl. Sed euismod, nisl quis aliquam ultricies, nunc nisl ultricies nunc, vitae aliquam nisl nunc vitae nisl. Sed euismod, nisl quis aliquam ultricies, nunc nisl ultricies nunc, vitae aliquam nisl nunc vitae nisl. Sed euismod, nisl quis aliquam ultricies, nunc nisl ultricies nunc, vitae aliquam nisl nunc vitae nisl."
      },
      {
        title: "Dreams and the Subconscious",
        date: "2020-10-01",
        author: "J. Smith",
        content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod, nisl quis aliquam ultricies, nunc nisl ultricies nunc, vitae aliquam nisl nunc vitae nisl. Sed euismod, nisl quis aliquam ultricies, nunc nisl ultricies nunc, vitae aliquam nisl nunc vitae nisl. Sed euismod, nisl quis aliquam ultricies, nunc nisl ultricies nunc, vitae aliquam nisl nunc vitae nisl. Sed euismod, nisl quis aliquam ultricies, nunc nisl ultricies nunc, vitae aliquam nisl nunc vitae nisl."
      }
    ]
  end

  def tac
  end

  def policies
  end


end
