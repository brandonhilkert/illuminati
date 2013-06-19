class SubscriptionMailer < ActionMailer::Base
  default from: "Illuminati <hi@illuminati.com>"

  def newsletter
    mail to: "brandon@pipelinedealsco.com", subject: "Classified competitive briefing - June 19, 2013"
  end
end
