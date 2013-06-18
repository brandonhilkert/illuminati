class SubscriptionsController < ApplicationController
  before_action :find_subscription, only: [:edit, :update, :destroy]

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
    redirect_to new_subscription_path, notice: "We were unable to find your subscription." unless @subscription.present?
  end

  def update
    if @subscription.update(subscription_params)
      redirect_to done_subscriptions_path
    else
      render :edit
    end
  end

  def destroy
    @subscription.destroy
    redirect_to new_subscription_path, notice: "You're successfully unsubscribed from your newsletter."
  end

  def done
  end

  private

  def find_subscription
    @subscription = Subscription.find_by_id(params[:id])
  end

  def subscription_params
    params.require(:subscription).permit(:email, :frequency_id, :topic_1, :topic_2, :topic_3)
  end
end
