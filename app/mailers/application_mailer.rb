# frozen_string_literal: true

# Default mailer that should be used as a mother class by other mailers
class ApplicationMailer < ActionMailer::Base
  default from: 'from@example.com'
  layout 'mailer'
end
