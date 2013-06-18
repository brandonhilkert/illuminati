class SubscriptionMailer < ActionMailer::Base
  default from: "hi@illuminati.com"

  def newsletter(subscription_id)
    @subscription = Subscription.find_by_id(subscription_id)
    @greeting = "Hi"

    mail to: "to@example.org", subject: ""
  end
end
