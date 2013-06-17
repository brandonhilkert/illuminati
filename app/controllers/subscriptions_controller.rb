class SubscriptionsController < ApplicationController
  def new
    @subscription = Subscription.new
    3.times { @subscription.topics.build }
  end

  def create
    @subscription = Subscription.new(subscription_params)

    if @subscription.save
      redirect_to done_subscriptions_path
    else
      render :new
    end
  end

  def done
  end

  private

  def subscription_params
    params.require(:subscription).permit(:email, :frequency_id, { topic: [:name] })
  end
end
