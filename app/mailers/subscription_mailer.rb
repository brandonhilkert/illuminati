class SubscriptionMailer < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.subscription_mailer.newsletter.subject
  #
  def newsletter
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
