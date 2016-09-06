require './sendmy_mail.rb'

mails=[
  # :to, :from, :subject
  ['support@nifi.org', 'me@myorg.com', 'ERROR: Possible Bug'],
  ['hr@nifi.org', 'me@imanengineer.com', 'Open Positions?'],
  ['all@nifi.org', 'not_a_spammer@spamallthethings.net', 'Cheap Drugs!'],
  ]

mails.each do |to, from, subject|
  puts "Sending: #{to} #{from} #{subject}"
  send_email(to, {from: from, subject: subject})
end
