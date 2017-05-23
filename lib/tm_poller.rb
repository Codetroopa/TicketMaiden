require_relative 'Mailer'
require_relative 'smtp-tls'
require 'watir'

# Responsible for querying Ticket Master for available seats
class TMPoller
  MAIDEN_EVENT = 'https://www1.ticketmaster.com/event/1C005232A4C9273B'
  # MAIDEN_EVENT = 'http://www.google.com'
  def initialize
    Selenium::WebDriver::Chrome.driver_path = 'D:\Downloads\chromedriver_win32\chromedriver.exe'
    @browser ||= Watir::Browser.new :chrome
    @mailer ||= Mailer.new
  end

  def poll
    @browser.goto MAIDEN_EVENT
    @browser
  end

  private

  def mail_out
    @mailer.mail_to(Mailer::MASTER_EMAIL, 'ticketmaiden@gmail.com', 'Test Subj', 'THERE ARE SOME GOD DAMNED TICKETS!!!!')
  end


end

poller = TMPoller.new
poller.poll
