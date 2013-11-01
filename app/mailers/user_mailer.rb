class UserMailer < ActionMailer::Base
  default :from => "do-not-reply@clearskies.co"

  def contact_email(contact)
    @contact = contact
    mail(:to => ENV["OWNER_EMAIL"], :from => @contact.email, :subject => "Website Contact")
  end

  def calculator_email
    mail :subject => "Mandrill rides the Rails!",
         :to      => "steven@pixelated.tv",
         :from    => "steven@clearskies.co"
  end

  def opportunity_welcome_email(opportunity)
    @opportunity = opportunity
    @url  = 'http://clearskies.co'

    mail :subject => "Message from Clear Skies: We're excited to get started",
         :to      => @opportunity.email,
         :from    => "steven@clearskies.co"
  end

  def new_opportunity_email(opportunity)
    @opportunity = opportunity

    mail :subject => "New opportunity",
         :to      => "steven@clearskies.co, steven@pixelated.tv",
         :from    => "steven@clearskies.co"
  end


end
