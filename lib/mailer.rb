require_relative 'smtp-tls'

require 'net/smtp'

# Responsible for mailing ticket information to a client
class Mailer
  def mail_to(addr, from, subj, body)
    Net::SMTP.start('smtp.gmail.com', 587, 'localhost',
                    'ticketmaiden@gmail.com', 'ticketmaiden96', 'plain') do |smtp|
      puts 'ech'
    end
  end
end

mailer = Mailer.new
mailer.mail_to(1,1,1,1)