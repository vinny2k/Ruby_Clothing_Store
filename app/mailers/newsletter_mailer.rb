class NewsletterMailer < ApplicationMailer
  # send a signup email to the user, pass in the user object that   contains the user's email address
  def send_signup_email(email)
    @email = email
    require 'sendgrid-ruby'

    from = SendGrid::Email.new(email: 's3785886@student.rmit.edu.au')
    to = SendGrid::Email.new(email: @email)
    subject = 'Subscription'
    content = SendGrid::Content.new(type: 'text/plain', value: 'Thank you for subscribing to our newsletter!')
    mail = SendGrid::Mail.new(from, subject, to, content)
    
    sg = SendGrid::API.new(api_key: ENV['SENDGRID_API_KEY'])
    response = sg.client.mail._('send').post(request_body: mail.to_json)
    puts response.status_code
    puts response.body
    puts response.headers
  end
end
