class ContactMailer < ActionMailer::Base
  default to: "rohm19@yahoo.com"

  def contact_email(name, email, message)
    @name = name
    @email = email
    @message = message


  mail(from: email, subject: "Nate's Articles Contact Form Message")
  end
end
