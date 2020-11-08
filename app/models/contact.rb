class Contact < MailForm::Base
include MailForm::Delivery

  attribute :full_name,     :validate => true
  attribute :email,         :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :company_name,  :validate => true
  attribute :message,       :validate => true
  attribute :nickname,      :captcha  => true


  def headers
    {
      :subject => "Potential employer",
      :to => "contact@arturoestnav.com",
      :from => "contact@arturoestnav.com"
      # %("#{name}" <#{email}>)
    }
  end
end
