class ApplicationMailer < ActionMailer::Base
  default from: 'yield@yield.com'

  layout 'mailer'
end
