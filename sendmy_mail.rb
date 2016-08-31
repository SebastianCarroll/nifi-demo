require 'net/smtp'

def send_email(to,opts={})
  opts[:server]      ||= '192.168.100.12'
  opts[:from]        ||= 'email@example.com'
  opts[:from_alias]  ||= 'Example Emailer'
  opts[:subject]     ||= "You need to see this"
  opts[:body]        ||= "Important stuff!"

  msg = <<END_OF_MESSAGE
From: #{opts[:from_alias]} <#{opts[:from]}>
To: <#{to}>
Subject: #{opts[:subject]}

#{opts[:body]}
END_OF_MESSAGE

  Net::SMTP.start(opts[:server], 10002) do |smtp|
    smtp.send_message msg, opts[:from], to
  end
end

send_email('someone@nifi.org') 
