class SubscriptionsController < ApplicationController
  def new
  end

  def create
    render action: :new
  end
end
