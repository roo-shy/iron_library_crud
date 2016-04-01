class ApplicationMailer < ActionMailer::Base
  default from: "robot@hello.com"
  layout 'mailer'
  default_url_options[:host] = "http://kidslibrary.herokuapp.com"
end
