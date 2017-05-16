# Responsible for querying Ticket Master for available seats
class TMPoller

  mailer = Mailer.new
  mailer.mail_to(MASTER_EMAIL, 'ticketmaiden@gmail.com', 'Test Subj', 'THERE ARE SOME GOD DAMNED TICKETS!!!!')

end