require_relative 'smtp-tls'

require 'net/smtp'
MASTER_EMAIL = 'clonetroopa1996@gmail.com'
# Responsible for mailing ticket information to a client
class Mailer


  def mail_to(addr, from, subj, body)
    # Format message from parameters
    name = from.split('@').first
    msg = <<END_OF_MESSAGE
From: #{name} <#{from}>
To: <#{addr}>
Subject: #{subj}
Date: #{Time.now.localtime}

#{body}
END_OF_MESSAGE

    Net::SMTP.start('smtp.gmail.com', 587, 'localhost',
                    'ticketmaiden@gmail.com', 'ticketmaiden96', 'plain') do |smtp|
      smtp.send_message msg, from, MASTER_EMAIL
    end
  end
end

