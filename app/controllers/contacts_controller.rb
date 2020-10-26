class ContactsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new, :create]
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    @contact.request = request
    if @contact.deliver
      flash.now[:error] = nil
    else
      flash.now[:error] = "Something went wrong,
                          please email me at
                          contact@arturoestnav.com"
      render :new
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name,
                                    :email,
                                    :nickname,
                                    :message)
  end
end
