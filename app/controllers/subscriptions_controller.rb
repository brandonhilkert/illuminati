class SubscriptionsController < ApplicationController
  def new
    @subscription = Subscription.new
  end

  def create
    @subscription = Subscription.new(subscription_params)

    if @subscription.save
      redirect_to done_subscriptions_path
    else
      render :new
    end
  end

  def edit
    @subscription = Subscription.find_by_id(params[:id])
    redirect_to new_subscription_path, notice: "We were unable to find your subscription." unless @subscription.present?
  end

  def update
    subscription = Subscription.find_by_id(params[:id])

    if subscription.update(subscription_params)
      redirect_to done_subscriptions_path
    else
      render :edit
    end

  end

  def done
  end

  private

  def subscription_params
    params.require(:subscription).permit(:email, :frequency_id, :topic_1, :topic_2, :topic_3)
  end
end
