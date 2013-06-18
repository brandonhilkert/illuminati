require "spec_helper"

describe SubscriptionMailer do
  describe "newsletter" do
    let(:mail) { SubscriptionMailer.newsletter }

    it "renders the headers" do
      mail.subject.should eq("Newsletter")
      mail.to.should eq(["to@example.org"])
      mail.from.should eq(["from@example.com"])
    end

    it "renders the body" do
      mail.body.encoded.should match("Hi")
    end
  end

end
