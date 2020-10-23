class Contact < MailForm::Base
  validates :name, :message, presence: true
  attribute :email, validate: /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :nickname, captcha: true

  def headers
    {
      subject: "Contact Form",
      to: "contact@arturoestnav.com",
      from: %("#{name}" <#{email}>)
    }
  end
end
