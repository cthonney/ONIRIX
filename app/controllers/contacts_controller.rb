class ContactsController < ApplicationController
  skip_before_action :authenticate_user!

  def new
    @contact = Contact.new
  end

  # def create
  #   success = verify_recaptcha(action: 'login', minimum_score: 0.5, secret_key: ENV['RECAPTCHA_SECRET_KEY_V3'])
  #   checkbox_success = verify_recaptcha unless success
  #   if success || checkbox_success
  #     @contact = Contact.new(contact_params)
  #     if @contact.save
  #       redirect_to new_contact_path, notice: "Votre message a été envoyé avec succès."
  #     else
  #       render :new
  #     end
  #   else
  #     if !success
  #       @show_checkbox_recaptcha = true
  #     end
  #     render 'new'
  #   end
  # end
  def create
    success = verify_recaptcha(action: 'login', minimum_score: 0.5, secret_key: ENV['RECAPTCHA_SECRET_KEY_V3'])
    checkbox_success = verify_recaptcha unless success

    if (success || checkbox_success) && (contact = Contact.new(contact_params)).save
      redirect_to new_contact_path, notice: "Your message has been successfully sent."
    else
      @show_checkbox_recaptcha = !success
      render :new
    end
  end



  private

  def contact_params
    params.require(:contact).permit(:name, :email, :message)
  end
end
