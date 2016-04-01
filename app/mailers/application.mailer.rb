class ApplicationMailer < ActionMailer::Base
  default from: "robot@hello.com"
  layout 'mailer'
end
