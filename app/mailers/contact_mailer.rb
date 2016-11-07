class ContactMailer < ActionMailer::Base
  default to: "nathanrohmtest@gmail.com"

  def contact_email(name, email, message)
    @name = name
    @email = email
    @message = message


  mail(from: email, subject: "Awesome Articles Contact Form Message")
  end
end
