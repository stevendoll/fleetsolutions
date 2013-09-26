class UserMailer < ActionMailer::Base
  default :from => "do-not-reply@example.com"

  def contact_email(contact)
    @contact = contact
    mail(:to => ENV["OWNER_EMAIL"], :from => @contact.email, :subject => "Website Contact")
  end

  def calculator_email
    mail :subject => "Mandrill rides the Rails!",
         :to      => "steven@pixelated.tv",
         :from    => "steven@clearskies.co"
  end

end
