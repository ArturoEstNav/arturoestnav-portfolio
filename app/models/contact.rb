class Contact < MailForm::Base
include MailForm::Delivery

  attribute :name,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message,   :validate => true
  attribute :nickname,  :captcha  => true
  # Add company and migrate to fullname


  def headers
    {
      :subject => "Potential employer",
      :to => "contact@arturoestnav.com",
      :from => "contact@arturoestnav.com"
    }
  end
end
