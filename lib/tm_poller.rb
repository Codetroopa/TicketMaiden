require 'mechanize'

# Responsible for querying Ticket Master for available seats
class TMPoller
  MAIDEN_EVENT = 'https://www1.ticketmaster.com/event/1C005232A4C9273B'
  def initialize
    @mechanize ||= Mechanize.new
    @mailer ||= Mailer.new
  end

  def poll
    page = @mechanize.get(MAIDEN_EVENT)
  end

  private

  def mail_out
    @mailer.mail_to(Mailer::MASTER_EMAIL, 'ticketmaiden@gmail.com', 'Test Subj', 'THERE ARE SOME GOD DAMNED TICKETS!!!!')
  end


end

poller = TMPoller.new
poller.poll
